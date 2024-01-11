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
    system = "x86_64-darwin";
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {
        inherit system;
      };
    in
      pkgs.mkShell {
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
  };
}
