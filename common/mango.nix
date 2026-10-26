{ config, pkgs, inputs, ... }:
{
	imports = [
		inputs.mango.hmModules.mango
	];

	wayland.windowManager.mango = {
		enable = true;
		settings = {
			bind = [
				"SUPER,r,reload_config"
				"SUPER,t,spawn,kitty fish"
				"SUPER,q,killclient"
				"SUPER,c,zoom"
				"SUPER,space,spawn,tofi-drun"
			];
		};
	};
}
