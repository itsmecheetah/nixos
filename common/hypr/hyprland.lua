-- hiiiiiiiiiii!!!!
require("modules.rules")
require("modules.input")
require("modules.env")
require("modules.binds")

---- MONITOR ----
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto"
})

---- PROGRAMS ----
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "hyprlauncher"

---- AUTOSTART ----
hl.on("hyprland.start", function()
    hl.exec_cmd(waybar)
end)

---- heyy goodlookin' (and, like, other config too ig) ----
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,

        border_size = 2,
        
        resize_on_border = true,
        layout = "dwindle", -- i MIGHT change this laater idk
        },
    decoration = {
        rounding = 10,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = 0xee1a1a1a,
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },
})

-- meh i'll add all the animations later wtv

---- MISC ----
hl.config({
    misc = {
        disable_hyprland_logo = false, -- i will probably make this true later once I have my own theme ideas and shit
    }
})