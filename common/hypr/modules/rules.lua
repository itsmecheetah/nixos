hl.workspace_rule({
    workspace = "1",
    default_name = "home",
    layout = "scrolling",
    default = true,
    persistent = true,
    layout_opts = {
        column_width = "0.9",
        focus_fit_method = "0",
        direction = "down",
    }
})

hl.workspace_rule({
    workspace = "2",
    default_name = "dwindle",
    persistent = true,
    layout = "dwindle",
    layout_opts = {
        preserve_split = true,
    }
})

hl.workspace_rule({
    workspace = "3",
    default_name = "dev",
    persistent = true,
    layout = "master",
    layout_opts = {
        new_status = "inherit",
    }
})

hl.workspace_rule({
    workspace = "4",
    default_name = "monacle",
    persistent = true,
    layout = "monacle",
})

hl.workspace_rule({
    workspace = "5",
    default_name = "games",
    persistent = true,
    no_border = true,
    no_rounding = true,
})

-- I will probably need more workspaces later. 
-- Specifically probably another one for browsing, Unity, Jetbrains, (although those 2 might just be monacle I'm not sure).
-- For now I'm gonna not define TOO many and I'm just gonna see what I need later down the road.

hl.window_rule({
    name = "games-makeFullscreen",
    match = { content = "game" },
    fullscreen = true,
    immediate = true,
})
