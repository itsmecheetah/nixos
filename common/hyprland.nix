{
    # Ok yes im writing my hyprland config in lua instead of nix but stfu
    xdg.configFile."hypr/modules" = {
        source = ./hypr/modules;
        recursive = true;
    };

		xdg.configFile."hypr/hyprland.lua" = {
			source = ./hypr/hyprland.lua;
		};
}
