local wezterm = require("wezterm")
local platform = require("utils.platform")

local config = {
  font_size = platform().is_mac and 13 or 10,

  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = "Normal", ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = "Normal", ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}

-- 仅 Windows 设置字体，mac 不设置字体使用系统默认
if not platform().is_mac then
  config.font = wezterm.font("JetBrainsMono NF")
end

return config
