{
  description = "Modern Python development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            (pkgs.python3.withPackages (ps:
              with ps; [
                pytest
                pytest-cov
                pytest-asyncio
                hypothesis
                numpy
                jupyterlab
                ipykernel
                ipywidgets
              ]))
            pkgs.ruff
            pkgs.pyright
          ];
        };
      }
    );
}
