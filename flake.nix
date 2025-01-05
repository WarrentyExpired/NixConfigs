{
  description = "WarrentyExpired's System Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    #nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";
    catppuccin.url = "github:catppuccin/nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

    outputs = { self, nixpkgs, home-manager, catppuccin, ... }@inputs: 
      let
        system = "x86_64-linux";
      in {
           nixosConfigurations.SonicSpeed = nixpkgs.lib.nixosSystem {
           specialArgs = {
             #pkgs-stable = import nixpkgs-stable {
             #  inherit system;
             #  config.allowUnfree = true;
             #};
             inherit inputs system;
           };
         modules = [
           ./nixos/configuration.nix
           catppuccin.nixosModules.catppuccin
         ];                      
       };

    homeConfigurations.warrentyexpired = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        ./home-manager/home.nix
        catppuccin.homeManagerModules.catppuccin
      ];
    };
  };
}
