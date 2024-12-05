return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "codelldb")
      -- table.insert(opts.ensure_installed, "eslint-lsp")
      -- table.insert(opts.ensure_installed, "html-lsp")
      -- table.insert(opts.ensure_installed, "htmlbeautifier")
      table.insert(opts.ensure_installed, "json-lsp")
      -- table.insert(opts.ensure_installed, "lua-language-server")
      table.insert(opts.ensure_installed, "prettierd")
      table.insert(opts.ensure_installed, "typescript-language-server")
    end,
  },
}
