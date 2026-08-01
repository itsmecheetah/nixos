{
    # Ok yes im writing my hyprland config in lua instead of nix but stfu
    xdg.configFile."hypr" = {
        source = ./hypr;
        recursive = true;
    };
}
