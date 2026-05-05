{
  description = "A neofetch-like utility made by Jotalea";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.jotafetch = pkgs.stdenv.mkDerivation {
          pname = "jotafetch";
          version = "1.0.0";
          src = ./.;
          installPhase = ''
            install -Dm755 jotafetch $out/bin/jotafetch
            install -Dm644 jotafetch.1 $out/share/man/man1/jotafetch.1
          '';
        };
        defaultPackage = self.packages.${system}.jotafetch;
      });
}
