-- Function to toggle between light and darker styles
-- local current_style = "darker" -- Default style

-- local function set_cursor_style(style)
--   if style == "light" then
--     vim.api.nvim_set_hl(0, "Cursor", { fg = "black", bg = "white" }) -- Dark cursor on light background
--     vim.api.nvim_set_hl(0, "CursorLine", { bg = "#f0f0f0" }) -- Light background for cursor line
--     vim.opt.guicursor = "n-v-c:block-Cursor" -- Cursor shape: block
--   else
--     vim.api.nvim_set_hl(0, "Cursor", { fg = "white", bg = "black" }) -- Light cursor on dark background
--     vim.api.nvim_set_hl(0, "CursorLine", { bg = "#282c34" }) -- Dark background for cursor line
--     vim.opt.guicursor = "n-v-c:block-Cursor" -- Cursor shape: block
--   end
-- end
--
-- function ToggleOneDarkStyle()
--   local onedark = require("onedark")
--   if current_style == "darker" then
--     current_style = "light"
--     onedark.setup({ style = "light" })
--     vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20" -- Cursor style for light theme
--     -- set_cursor_style("light")
--   else
--     current_style = "darker"
--     onedark.setup({ style = "darker" })
--     vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20" -- Cursor style for darker theme
--     -- set_cursor_style("darker")
--   end
--   onedark.load()
-- end
--
-- -- Keybinding to toggle the colorscheme style
-- vim.api.nvim_set_keymap("n", "<leader>ts", ":lua ToggleOneDarkStyle()<CR>", { noremap = true, silent = true })
local plugins = {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- options: 'hard', 'medium', 'soft'
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  -- {
  --   "navarasu/onedark.nvim",
  --   config = function()
  --     require("onedark").setup({
  --       style = "darker", -- Initial style
  --       transparent = true,
  --       term_colors = true,
  --       ending_tildes = false,
  --       -- More customizations sequelize.sync()if needed
  --     })
  --     require("onedark").load()
  --     vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20" -- Cursor style for initial theme
  --   end,
  -- },
  --
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     -- Eva-01 vibe
  --     -- https://enjoykeycap.github.io/docs/gmk-keycaps/Mecha-01/
  --     -- https://www.pantone.com/connect/802-C
  --     -- https://www.pantone.com/connect/267-C
  --     local color_eva = {
  --       fg = "#44d62c",
  --       bg = "#5f249e",
  --     }
  --     -- https://github.com/nyoom-engineering/oxocarbon.nvim
  --     local color_oxocarbon = {
  --       pink = "#ff7eb6",
  --       purple = "#be95ff",
  --     }
  --
  --     require("catppuccin").setup({
  --       flavour = "mocha",
  --       background = { -- :h background
  --         light = "latte",
  --         dark = "mocha",
  --       },
  --       transparent_background = true,
  --       color_overrides = {
  --         mocha = {
  --           -- https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/palettes/mocha.lua
  --           flamingo = color_oxocarbon.pink,
  --           pink = color_oxocarbon.pink,
  --           mauve = color_oxocarbon.purple,
  --           red = color_oxocarbon.pink,
  --           maroon = color_oxocarbon.pink,
  --         },
  --       },
  --       custom_highlights = function(colors)
  --         return {
  --           -- Help my eyes
  --           Comment = {
  --             fg = colors.overlay2,
  --           },
  --           LineNr = {
  --             fg = colors.overlay1,
  --           },
  --           ExtraWhitespace = {
  --             bg = color_eva.bg,
  --           },
  --           markdownLinkText = {
  --             style = {},
  --           },
  --           -- Support nvim-tree.lua
  --           NvimTreeStatuslineNc = {
  --             link = "NuimTreeStatusline",
  --           },
  --           -- Support mini.statusline
  --           StatusLineNC = {
  --             fg = color_oxocarbon.pink,
  --           },
  --         }
  --       end,
  --     })
  --
  --     -- vim.cmd("colorscheme catppuccin")
  --   end,
  -- },
  -- {
  --   "navarasu/onedark.nvim",
  --   config = function()
  --     require("onedark").setup({
  --       style = "darker", -- options: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
  --       transparent = false, -- Show background or not
  --       term_colors = true, -- Use terminal colors
  --       ending_tildes = false, -- Show tildes after end of buffer
  --       -- Other options as needed
  --     })
  --     require("onedark").load()
  --   end,
  -- },
  -- {
  --   "xiantang/darcula-dark.nvim",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   config = function()
  --     require("tokyonight").setup({
  --       style = "storm", -- 'storm', 'night', 'day'
  --       -- Other options
  --     })
  --   end,
  -- },
  -- {
  --   "EdenEast/nightfox.nvim",
  --   config = function()
  --     require("nightfox").setup({
  --       options = {
  --         colorblind = {
  --           enable = true,
  --         },
  --       },
  --       palettes = {
  --         blue = { base = "#4d688e", bright = "#4e75aa", dim = "#485e7d" },
  --       },
  --     })
  --     -- vim.cmd("colorscheme terafox")
  --   end,
  -- },
  -- {
  --   "briones-gabriel/darcula-solid.nvim",
  --   dependencies = {
  --     "rktjmp/lush.nvim",
  --   },
  --   config = function()
  --     vim.cmd("colorscheme darcula-solid")
  --   end,
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require("github-theme").setup({
  --       -- ...
  --     })
  --
  --     -- vim.cmd("colorscheme github_dark_colorblind")
  --     -- vim.cmd("colorscheme github_dark")
  --   end,
  -- },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "github_dark_colorblind",
      colorscheme = "gruvbox",
    },
  },
}
return plugins
