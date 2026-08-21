{ config, inputs, pkgs, ... }:

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
        jetbrains.rust-rover
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
    services.awww.enable = true;

    wayland.windowManager.hyprland = {
        enable = true;
        package = null;
        portalPackage = null;
    };

    xdg.configFile."quickshell/snowdrop".source = 
	config.lib.file.mkOutOfStoreSymlink
	    "${config.home.homeDirectory}/.nix/common/snowdrop";

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
	    shellIntegration.enableFishIntegration = true;
	    settings = { confirm_os_window_close = 0; };
	};
	
	fish.enable = true;

	starship = {
	    enable = true;
			settings = {
				format = "$directory$git_branch$git_status\n$character";
      };
  };

	quickshell.enable = true;
    };
}
