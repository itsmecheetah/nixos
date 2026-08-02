-- js the default beziers
hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("almostLinear", { type = "bezier", points = { {0.5,-.5}, {0.75, 1} } })
hl.curve("quick", {type = "bezier", points = { {0.15, 0}, {0.1, 1} } })

-- aaaand default spring
hl.curve("easy", { type = "spring", mass = 1, stiffness = 238.1191, dampening = 25.21279333 })

-- yes i should put my own later but rn im just trying shit


hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "easeOutQuint", style = "slidevert" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "quick", style = "fade" })
