{ inputs, pkgs, ... }:

{
    imports = [ ./nixcord.nix ];

    home.username = "orangecheetah";
    home.homeDirectory = "/home/orangecheetah";
    home.stateVersion = "26.05";

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

    programs.git = {
        enable = true;
        userName = "itsmecheetah";
        userEmail = "enzoljost@gmail.com";
        extraConfig = {
            credential.helper = "${pkgs.git-credential-manager}/bin/git-credential-manager";
        };
    };

    programs.fastfetch = {
        enable = true;
        settings = {
            display = {
                separator = " » ";
                color = "blue";
            };
            # Idk yet what my color palette and theme and stuff will be, so I'm just gonna wait on the rest of the config for this one
        };
    };

    programs = {
        vscode.enable = true;
        obs-studio.enable = true;
    };
}
