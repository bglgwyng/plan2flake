{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    haskell-flake.url = "github:srid/haskell-flake";
    hypertypes = {
      url = "github:lamdu/hypertypes";
      flake = false;
    };
    th-abstraction = {
      url = "github:glguy/th-abstraction/v0.6.0.0";
      flake = false;
    };
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      debug = true;
      imports = [
        # To import a flake module
        # 1. Add foo to inputs
        # 2. Add foo as a parameter to the outputs function
        # 3. Add here: foo.flakeModule
        inputs.haskell-flake.flakeModule
      ];
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }:
        let
          plan-json = builtins.fromJSON (builtins.readFile ./plan.json);
          install-plan = plan-json.install-plan;
          configureds = builtins.filter (x: x.type == "configured" && x.pkg-src.type == "repo-tar") install-plan;

          unpack-tar-gz-drv = name: drv: pkgs.stdenv.mkDerivation {
            name = "${name}-extracted";
            src = drv;
            installPhase = ''
              mkdir -p $out
              cd $out
              tar -xvf $src
            '';

            dontBuild = true;
          };

          packages-from-plan-json = builtins.map
            (x: {
              name = x.pkg-name;
              value = {
                source = "${(unpack-tar-gz-drv x.pkg-name (builtins.fetchurl {
                      url = "https://hackage.haskell.org/package/${x.pkg-name}-${x.pkg-version}/${x.pkg-name}-${x.pkg-version}.tar.gz";
                      sha256 = x.pkg-src-sha256;
                    }))}/${x.pkg-name}-${x.pkg-version}";
              };
            })
            configureds;
        in
        {
          # Per-system attributes can be defined here. The self' and inputs'
          # module parameters provide easy access to attributes of the same
          # system.

          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;
            config.allowBroken = true;
          };

          # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
          # packages.default = pkgs.hello;

          # Unwrapped GHC without extra packages
          packages.ghc-unwrapped = pkgs.haskell.compiler.ghc98;
          haskellProjects.default =
            let
              ps = pkgs.lib.lists.take 18 (packages-from-plan-json);
              p = builtins.listToAttrs (ps);
            in
            {
              projectRoot = ./.;
              packages = builtins.trace ((x: x.name) (builtins.elemAt ps 17)) p;
              devShell = {
                hlsCheck.enable = false;
                # tools = _: { };
                tools = pkgs: {
                  ghcid = null;
                  haskell-language-server = null;
                };
                hoogle = false;
              };
            };

          apps.generate-plan-json = {
            type = "app";
            program = pkgs.writeShellScriptBin "hi" ''
              MYTMP="$(mktemp -d)"
              trap 'rm -rf -- "$MYTMP"' EXIT

              cabal build all \
                --dry-run \
                --with-compiler=${config.haskellProjects.default.outputs.finalPackages.ghc}/bin/ghc \
                --builddir=$MYTMP

              mv $MYTMP/cache/plan.json .
            '';
          };
        };
      flake = let pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux; in rec {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.
        # apps.x86_64-linux.default = {
        #   type = "app";
        #   program = "${pkgs.writeShellScript "copy-plan-json" ''
        #     cp ${./plan.json} ./
        #     echo "plan.json has been copied to the current directory"
        #   ''}";
        # };
        # bar = (pkgs.callPackage "${inputs.nixpkgs}/pkgs/data/misc/hackage/default.nix") { };
        # baz = (pkgs.stdenv.mkDerivation {
        #   name = "foo";
        #   src = (pkgs.callPackage "${inputs.nixpkgs}/pkgs/data/misc/hackage/default.nix") { };

        #   installPhase = ''
        #     mkdir -p $out
        #     cd $out
        #     tar -xvf $src
        #   '';

        #   dontBuild = true;
        # });
        # foo = import (pkgs.stdenv.mkDerivation {
        #   name = "foo";
        #   src = (pkgs.callPackage "${inputs.nixpkgs}/pkgs/data/misc/hackage/default.nix") { };

        #   installPhase = ''
        #     mkdir -p $out
        #     cd $out
        #     tar -xvf $src
        #   '';

        #   dontBuild = true;
        # });
        plan-json = builtins.fromJSON (builtins.readFile ./plan.json);
        install-plan = plan-json.install-plan;
        pkgs = builtins.map (pkg: { name = pkg.pkg-name; versoin = pkg.pkg-version; }) install-plan;
        # foo = import (((pkgs.callPackage "${inputs.nixpkgs}/pkgs/data/misc/hackage/default.nix") { }).srcOnly);
      };
    };
}
