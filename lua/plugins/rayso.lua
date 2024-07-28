return {
  "TobinPalmer/rayso.nvim",
  config = function()
    require("rayso").setup({
      base_url = "https://ray.so/", -- Default URL
      open_cmd = "google-chrome-unstable",
      options = {
        background = true, -- If the screenshot should have a background.
        dark_mode = true, -- If the screenshot should be in dark mode.
        logging_path = "/home/pro/Pictures/rayso", -- Notices the trailing slash
        logging_file = "rayso",
        logging_enabled = false, -- If you enable the logging file.
        padding = 16, -- The default padding that the screenshot will have.
        theme = "breeze", -- Theme
        title = "learning", -- Default title
      },
    })
    vim.keymap.set("v", "<leader>ps", require("lib.create").create_snippet)
  end,
}
