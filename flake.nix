{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixcord = {
      url = "github:4evy/nixcord";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		lanzaboote = {
			url = "github:nix-community/lanzaboote/v1.1.0";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixos-hardware = {
			url = "github:NixOS/nixos-hardware";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, home-manager, nixcord, lanzaboote, nixos-hardware, ... }@inputs: {
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;
    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

    nixosConfigurations = {
      thinkpad = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs; };
        modules = [
          ./common
          ./hosts/thinkpad
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.orangecheetah = import ./hosts/thinkpad/home.nix;
          }
					nixos-hardware.nixosModules.lenovo-thinkpad-x1-9th-gen
        ];
      };

      desktop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs; };
        modules = [
          ./common
          ./hosts/desktop
          home-manager.nixosModules.home-manager
					inputs.lanzaboote.nixosModules.lanzaboote
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.orangecheetah = import ./hosts/desktop/home.nix;
          }
        ];
      };
    };

  };
}
