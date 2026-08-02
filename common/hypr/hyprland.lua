-- hiiiiiiiiiii!!!!
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
    -- Special
    hl.exec_cmd("discord", { workspace = "special:1 silent" })
    hl.exec_cmd("firefox", { workspace = "special:1 silent" })
    
    hl.exec_cmd("top", { workspace = "special:2 silent" })

    -- Home
    hl.exec_cmd("fastfetch", { float = true, size = { 800, 600 }, center = true })

    -- Dwindle
    hl.exec_cmd("unimatrix", { workspace = "2 silent" })
    hl.exec_cmd("nyancat", { workspace = "2 silent" })
    hl.exec_cmd(terminal)

    -- Dev
    hl.exec_cmd("neovide", { workspace = "3 silent" })
    hl.exec_cmd(terminal)
    hl.exec_cmd(firefox)

    -- Monacle
    -- (I'm pretty sure monacle is supposed to be just one window or something
    -- so something's clearly not working but that's a problem for later bcs I
    -- haven't even used this workspace yet lmaooo)
    hl.exec_cmd(terminal)

    -- Games
    hl.exec_cmd("steam")
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
	workspace_wraparound = true,
    },
})

-- meh i'll add all the animations later wtv

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
