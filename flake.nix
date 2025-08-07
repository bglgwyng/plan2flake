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
                # source = x.pkg-version;
                source =
                  let
                    src-tar-gz = (builtins.fetchurl {
                      url =
                        "https://hackage.haskell.org/package/${x.pkg-name}-${x.pkg-version}/${x.pkg-name}-${x.pkg-version}.tar.gz";
                      sha256 = x.pkg-src-sha256;
                    });
                    metadata = (builtins.fetchurl {
                      url =
                        "https://hackage.haskell.org/package/${x.pkg-name}-${x.pkg-version}/${x.pkg-name}.cabal";
                      sha256 = x.pkg-cabal-sha256;
                    });
                  in
                  pkgs.stdenv.mkDerivation {
                    name = x.pkg-name;
                    src = src-tar-gz;
                    installPhase = ''
                      mkdir -p $out
                      cd $out
                      tar -xvf $src --strip-components=1
                      cp ${metadata} ${x.pkg-name}.cabal
                    '';
                    dontBuild = true;

                  };

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
            overlays = [
              (_: _: {
                testu01 = null;
              })
            ];
          };

          # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
          # packages.default = pkgs.hello;

          packages.foo = pkgs.linkFarm "hi" (builtins.map
            (x: {
              name = x.name;
              path = x.value.source;
            })

            (
              builtins.filter
                (x: true)
                # (x: x.name == "network-uri")
                (pkgs.lib.lists.take 1000 packages-from-plan-json)));

          # Unwrapped GHC without extra packages
          packages.ghc-unwrapped = pkgs.haskell.compiler.ghc98;
          haskellProjects.default =
            let
              ps =
                #  pkgs.lib.lists.take 18
                (packages-from-plan-json);
              p = builtins.listToAttrs (ps);
            in
            {
              projectRoot = ./.;
              packages = p;
              defaults.settings.all = {
                check = false;
              };
              settings = {
                tasty-quickcheck.jailbreak = true;
              };
              devShell = {
                hlsCheck.enable = false;
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
        plan-json = builtins.fromJSON (builtins.readFile ./plan.json);
        install-plan = plan-json.install-plan;
        pkgs = builtins.map (pkg: { name = pkg.pkg-name; versoin = pkg.pkg-version; }) install-plan;
      };
    };
}
