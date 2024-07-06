{
  description = "Development environment for Mkdocs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        python = pkgs.python311;
      in {
        devShells.default = pkgs.mkShellNoCC {
          packages = [
            # Python plus helper tools
            (python.withPackages (ps: with ps; [
              virtualenv # Virtualenv
              pip # The pip installer
            ]))
          ];
        };
#
#        devShells.docs = pkgs.mkShellNoCC {
#          packages = with pkgs; [
#            go-task
#            htmltest
#            mkdocs-material
#            mkdocs-redirects
#            mkdocs-minify
#            cpkgs.mkdocs-rss-plugin # https://github.com/NixOS/nixpkgs/pull/277350
#            cpkgs.mkdocs-include-markdown-plugin # https://github.com/NixOS/nixpkgs/pull/277351
#          ];
#        };
      }
    );
}