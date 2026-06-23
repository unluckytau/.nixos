{
	description = "NixOS Flake + Home-manager";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

		home-manager.url = "github:nix-community/home-manager/release-25.11";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";

		nixvim.url = "github:nix-community/nixvim/nixos-25.11";
		nixvim.inputs.nixpkgs.follows = "nixpkgs";

		noctalia = {
			url = "github:noctalia-dev/noctalia/legacy-v4";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		ember-theme = {
			url = "github:ember-theme/nvim";
			flake = false;
		};
	};

	outputs = inputs:
		let
			user = "tau";
			host = "Tau";
			system = "x86_64-linux";
		in {
			nixosConfigurations.${host} = inputs.nixpkgs.lib.nixosSystem {
				inherit system;
				specialArgs = { inherit inputs system user host; };
				modules = [
					./system
					inputs.home-manager.nixosModules.home-manager

					{
						home-manager = {
							useGlobalPkgs = true;
							useUserPackages = true;
							extraSpecialArgs = { inherit inputs system user host; };
						};

						home-manager.users.${user} = {
							home.stateVersion = "25.11";

							imports = [
								inputs.nixvim.homeModules.nixvim
								./home-manager
							];
						};
					}
				];
			};
		};
}
