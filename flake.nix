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
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        # Per-system attributes can be defined here. The self' and inputs'
        # module parameters provide easy access to attributes of the same
        # system.
        # config.config = config;


        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          config.allowBroken = true;
        };

        # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
        packages.default = pkgs.hello;
        haskellProjects.default = {
          projectRoot = ./.;
          devShell = {
            hlsCheck.enable = false;
            tools = pkgs: {
              cabal-fmt = pkgs.cabal-fmt;
            };
            hoogle = true;
          };
        };
      };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
