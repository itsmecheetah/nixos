{ config, pkgs, ... }:

{
    imports = [ ./hardware-configuration.nix ];

    networking.hostName = "nixos-thinkpad";

    services.tlp.enable = true;

		xdg.configFile."hypr/hosts" = {
			source = "./activehost.lua";
		};		
}
