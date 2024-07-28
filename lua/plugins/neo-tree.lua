-- tweaks for neo-tree
return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  opts = {
    window = { position = "right", width = 30 },

    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        never_show = {
          ".git",
          ".DS_Store",
          "node_modules",
        },
        always_show = {
          ".gitignore",
          ".env",
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
    },
    source_selector = {
      winbar = true,
      statusline = false,
    },
  },
}
