{ config, pkgs, ... }:

{
    imports = [ ./hardware-configuration.nix ];

    networking.hostName = "nixos-thinkpad";

    services.tlp.enable = true;
}
