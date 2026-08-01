hl.workspace_rule({
    workspace = "name:home",
    layout = "scrolling",
    default = true,
    layout_opts = {
        column_width = "0.9",
        focus_fit_method = "0",
        direction = "down",
    }
})

hl.workspace_rule({
    workspace = "name:dwindle",
    layout = "dwindle"
    layout_opts = {
        preserve_split = true,
    }
})

hl.workspace_rule({
    workspace = "name:dev",
    layout = "master",
    layout_opts = {
        new_status = "inherit",
    }
})

hl.workspace_rule({
    workspace = "name:monacle",
    layout = "monacle",
})

hl.workspace_rule({
    workspace = "name:games",
    no_border = true,
    no_rounding = true,
})

-- I will probably need more workspaces later. 
-- Specifically probably another one for browsing, Unity, Jetbrains, (although those 2 might just be monacle I'm not sure).
-- For now I'm gonna not define TOO many and I'm just gonna see what I need later down the road.

h1.window_rule({
    name = "games-makeFullscreen",
    match = { content = "game" },
    fullscreen = true,
    immediate = true,
})