return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss All Notifications",
    },
  },
  opts = {
    stages = {
      function(state)
        local width = vim.o.columns
        local height = vim.o.lines
        local notification_width = math.min(state.width, math.floor(width * 0.4))
        local notification_height = math.min(state.height, math.floor(height * 0.3))

        return {
          relative = "editor",
          anchor = "NE",
          width = notification_width,
          height = notification_height,
          col = width - 2,
          row = 2,
          style = "minimal",
          border = "rounded",
          opacity = 80,
        }
      end,
      function(state, win)
        return {
          col = { state.col, damping = 0.9, frequency = 2 },
          row = { state.row, damping = 0.9, frequency = 2 },
        }
      end,
      function(state, win)
        return {
          time = true,
        }
      end,
      function(state, win)
        return {
          col = { state.col, damping = 0.9, frequency = 2 },
          row = { state.row, damping = 0.9, frequency = 2 },
        }
      end,
    },
    timeout = 3000,
    max_height = function()
      return math.floor(vim.o.lines * 0.3)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.4)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
  init = function()
    -- when noice is not enabled, install notify on VeryLazy
    if not LazyVim.has("noice.nvim") then
      LazyVim.on_very_lazy(function()
        vim.notify = require("notify")
      end)
    end
  end,
}
