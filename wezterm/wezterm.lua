local wezterm = require 'wezterm'

return {
    
   font = wezterm.font 'Fira Code',
    color_scheme = "tokyonight",
    font_size = 14.0,
    line_height = 1.3,
    window_decorations = "NONE",
    enable_tab_bar = false,
    keys = {
        {
            key = 'n',
            mods = 'SHIFT|CTRL',
            action = wezterm.action.ToggleFullScreen,
        },
    },
}
