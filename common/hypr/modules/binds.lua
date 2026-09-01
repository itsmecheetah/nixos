-- ngl the spaces in here are annoying to deal with but they make the code way cleaner looking so wtv
-- also I have my super and caps keys swapped, so the binds are designed with that in mind. (see ../../default.nix:35)
local m = "SUPER"

-- obviously these arent what they should be but im testing a fix for smt :)
hl.bind(m .. " + space",        hl.dsp.exec_cmd("kitty fsel"))
hl.bind(m .. " + T",            hl.dsp.exec_cmd("kitty fish"))
hl.bind(m .. " + E",            hl.dsp.exec_cmd("dolphin"))
hl.bind(m .. " + V",            hl.dsp.exec_cmd("kitty nvim"))
  
hl.bind(m .. " + W",            hl.dsp.focus({ direction = "up" }))
hl.bind(m .. " + A",            hl.dsp.focus({ direction = "left" }))
hl.bind(m .. " + S",            hl.dsp.focus({ direction = "down" }))
hl.bind(m .. " + D",            hl.dsp.focus({ direction = "right" }))

for i = 1, 10 do
    -- Number keys: workspaces
    -- Function keys: special
    -- No shift: Focus
    -- Shift: Move window

    local key = i % 10
    hl.bind(m .. " + " .. key, hl.dsp.focus({ workspace = key }))
    hl.bind(m .. " + SHIFT + " .. key,  hl.dsp.window.move({ workspace = key }))

    if key ~= 0 then
        hl.bind(m .. " + F" .. key, hl.dsp.workspace.toggle_special(key))
        hl.bind(m .. " + SHIFT + F" .. key, hl.dsp.window.move({ workspace = "special:" .. key }))
    end
end

hl.bind(m .. " + mouse_down",   hl.dsp.focus({ workspace = "e+1" }))
hl.bind(m .. " + mouse_up",     hl.dsp.focus({ workspace = "e-1" }))

hl.bind(m .. " + mouse:272",    hl.dsp.window.drag(), { mouse = true })
hl.bind(m .. " + mouse:273",    hl.dsp.window.resize(), { mouse = true })
hl.bind(m .. " + F",            hl.dsp.window.float({ action = "toggle" }))
hl.bind(m .. " + Q",            hl.dsp.window.close())

hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" temp.png'))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioPrev",        hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext",        hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause",       hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",        hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
