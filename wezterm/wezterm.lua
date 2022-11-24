local wezterm = require 'wezterm'

return {
    
    font = wezterm.font 'Fira Code',
    color_scheme = "Darcula (base16)",
    default_prog = { '/usr/local/bin/fish', '-l' },
    font_size = 16.0,
    line_height = 1.4,
}
