{ config, pkgs, inputs, ... }:
{
	imports = [
		inputs.mango.hmModules.mango
	];

	wayland.windowManager.mango = {
		enable = true;
		settings = {
			bind = [
				# mango
				"SUPER,r,reload_config"

				# window management
				"SUPER,q,killclient"
				"SUPER,c,zoom"

				# applications
				"SUPER,space,spawn,tofi-drun"
				"SUPER,t,spawn,kitty fish"

				# movement
				"SUPER,a,focusdir,left"
				"SUPER,d,focusdir,right"
				"SUPER,w,focusdir,up"
				"SUPER,s,focusdir,down"
			];
		};
	};
}
