{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        with nixpkgs.legacyPackages.${system};
        {
          formatter = nixpkgs-fmt;
          packages.default = stdenv.mkDerivation rec {
            pname = "rime-cli-server";
            version = "v0.0.1-alpha";
            src = self;
            buildInputs = [
              pkg-config
              json_c.dev
              librime
            ];
          };
        }
      );
}
