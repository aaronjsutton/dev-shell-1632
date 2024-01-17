{
  description = "A developer environment for Pitt CS 1632.";
  inputs = {
    nixpkgs.url = "nixpkgs/release-23.11";
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "x86_64-darwin"
      ] (system: function nixpkgs.legacyPackages.${system});
  in {
    packages = forAllSystems (pkgs: {
      default = pkgs.callPackage ./package.nix {};
    });
    devShells = forAllSystems (pkgs: {
      default = pkgs.mkShell {
        packages = with pkgs; [
          fish
          maven
          zulu11
          git
          gh
        ];
        shellHook = ''
          exec fish
        '';
      };
    });
  };
}
