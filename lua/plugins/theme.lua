-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000,
--   config = function()
--     vim.cmd("colorscheme onedark")
--   end,
-- }

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    style = "storm",      -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day",  -- The theme is used when the background is set to light
    transparent = true,   -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
      -- Style to be applied to different syntax groups
      -- Value is any valid attr-list value for `:help nvim_set_hl`
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      -- Background styles. Can be "dark", "transparent" or "normal"
      sidebars = "storm",            -- style for sidebars, see below
      floats = "storm",              -- style for floating windows
    },
    sidebars = { "qf", "help" },    -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3,           -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false,           -- dims inactive windows
    lualine_bold = false,           -- When `true`, section headers in the lualine theme will be bold

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors)
      colors.border = "#565f89"
    end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors)
    end,
  },
  config = function(_, opts)
    require "tokyonight".setup(opts)
    require "tokyonight".load()
  end,
}