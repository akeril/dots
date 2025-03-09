{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = { url = "github:nix-community/home-manager/master"; inputs.nixpkgs.follows = "nixpkgs"; };
    disko = { url = "github:nix-community/disko"; inputs.nixpkgs.follows = "nixpkgs"; };
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs = inputs@{ nixpkgs, home-manager, disko, ... }:
    {
      nixosConfigurations = {
        lyra = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            home-manager.nixosModules.default
            disko.nixosModules.default
            ./host
            ./modules
          ];
        };
      };
    };
}
