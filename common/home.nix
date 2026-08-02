{ inputs, pkgs, ... }:

{
    imports = [
    ./nixcord.nix
    ./hyprland.nix
    ];

    home.username = "orangecheetah";
    home.homeDirectory = "/home/orangecheetah";
    home.stateVersion = "26.05";
    home.sessionVariables.NIXOS_OZONE_WL = "1";

    home.packages = with pkgs; [
        jetbrains.rider
        clang
        pkg-config
        unityhub
        git-credential-manager
        dotnet-sdk
        mono
        prismlauncher
    ];

    services.dunst = {
        enable = true;
        #ok yes theres nothing else in here rn but ill add settings later dw
    };
    services.hyprpolkitagent.enable = true;

    wayland.windowManager.hyprland = {
        enable = true;
        package = null;
        portalPackage = null;
    };

    programs = {
        git = {
            enable = true;
            userName = "itsmecheetah";
            userEmail = "enzoljost@gmail.com";
            extraConfig = {
                credential.helper = "${pkgs.git-credential-manager}/bin/git-credential-manager";
                credential.credentialStore = "secretservice";
            };
        };

        fastfetch = {
            enable = true;
            # Add more stuff later
        };

	neovim.enable = true;
	neovide.enable = true;

        obs-studio.enable = true;
        kitty = {
	    enable = true;
	    settings = { confirm_os_window_close = 0; };
	};
    };
}
