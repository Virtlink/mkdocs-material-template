# This flake offers a shell environment with Python and UV. To access it:
#
#     nix develop
{
  description = "A Python dev environment using UV.";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            python3         # Python 3
            uv              # Python dependency manager
            figlet          # ASCII art welcome messages
            git             # For Git revision date plugin
          ];
          shellHook = ''
            #!/usr/bin/env bash

            # Sync dependencies
            uv sync -q
          
            # Create a fancy welcome message
            REPO_NAME=$(basename "$PWD")
            PROPER_REPO_NAME=$(echo "$REPO_NAME" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')
            uv run figlet "$PROPER_REPO_NAME"
            echo "Welcome to the $PROPER_REPO_NAME development environment on ${system}!"
            echo 
          '';
        };
      }
    );
}
