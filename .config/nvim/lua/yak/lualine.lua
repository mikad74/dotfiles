local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

local _theme
local status_ok_colors, colors = pcall(require, "yak.yaknotes.colors")
if status_ok_colors then
    local c = colors.config(1)
    _theme = {
      normal = {
            a = { bg = c.yak7, fg = c.yak1},
            b = { bg = c.yakHL, fg = c.yak3},
            c = { bg = c.yakHL, fg = c.yak3},
      },
      insert = {
      },
      visual = {
      },
      replace = {
      },
      command = {
      },
      inactive = {
      }
    }
else
    _theme = "auto"
end


lualine.setup {
    options = {
        icons_enabled = true,
        theme = _theme,
        component_separators = { left = '|', right = ''},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = { 'filename' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {},
        lualine_x = { 'filetype' },
        lualine_y = {},
        lualine_z = { 'progress', 'location' },
    },
}
