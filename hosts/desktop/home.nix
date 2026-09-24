{
	imports = [
		../../common/home.nix
	];

	xdg.configFile."hypr/hosts/activehost.lua" = {
		source = ./activehost.lua;
	};
}
