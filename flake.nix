{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations.Levi-NixOS = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [ 
        ./Hosts/Levi-NixOS.nix

        home-manager.nixosModules.home-manager {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = { inherit inputs; };
            backupFileExtension = "HomeManagerBackup";
            users = {
              callum = import ./HomeManager/Users/callum.nix;
            };
          };
        }
      ];
    };
    nixosConfigurations.Levi-Omen = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [ 
        ./Hosts/Levi-Omen.nix

        home-manager.nixosModules.home-manager {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = { inherit inputs; };
            backupFileExtension = "HomeManagerBackup";
            users = {
              callum = import ./HomeManager/Users/callum.nix;
            };
          };
        }
      ];
    };
  };
}