-- hiiiiiiiiiii!!!!
---- MONITOR ----
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto"
})

---- PROGRAMS ----
local terminal = "kitty fish"
local fileManager = "dolphin" -- lol i still gotta fix this
local menu = "hyprlauncher"

---- AUTOSTART ----
hl.on("hyprland.start", function()
    -- System
    hl.exec_cmd("dunst")
    hl.exec_cmd("sleep 1 && hyprctl reload")
    hl.exec_cmd("awww-daemon")

    -- Special
    hl.exec_cmd("discord", { workspace = "special:1 silent" })    
    hl.exec_cmd("btop", { workspace = "special:2 silent" })

    -- Home
    hl.exec_cmd(terminal .. " -e sh -c 'fastfetch; exec sh'", { float = true, size = { 1000, 800 }, center = true })

    -- Dwindle
    hl.exec_cmd(terminal .. " -e unimatrix", { workspace = "2 silent" })
    hl.exec_cmd(terminal, { workspace = "2 silent" })

    -- Dev
    hl.exec_cmd("neovide", { workspace = "3 silent" })
    hl.exec_cmd(terminal, { workspace = "3 silent" })
    hl.exec_cmd("firefox", { workspace = "3 silent" })
end)

---- heyy goodlookin' (and, like, other config too ig) ----
hl.config({
    general = {
	gaps_in = 5,
        gaps_out = 10,

        border_size = 2,
        
        resize_on_border = true,
        layout = "dwindle", -- i MIGHT change this laater idk
        },
    decoration = {
        rounding = 7,
        rounding_power = 2,

	active_opacity = 0.85,
	inactive_opacity = 0.85,
	--active_opacity = 1,
	--inactive_opacity = 1,


        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = 0xee1a1a1a,
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 3,
            vibrancy = 0.6,
	    xray = true,
        },
    },
    animations = {
        enabled = true,
	workspace_wraparound = true,
    },
    cursor = {
	no_warps = true,
	no_hardware_cursors = true,
    },
})

---- MISC ----
hl.config({
    misc = {
        disable_hyprland_logo = false, -- i will probably make this true later once I have my own theme ideas and shit
    }
})

require("modules.rules")
require("modules.input")
require("modules.env")
require("modules.binds")
require("modules.animations")
