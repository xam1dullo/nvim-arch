if LazyVim.lsp.get_config("denols") and LazyVim.lsp.get_config("tsserver") then
  local is_deno = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")
  LazyVim.lsp.disable("tsserver", is_deno)
  LazyVim.lsp.disable("denols", function(root_dir)
    return not is_deno(root_dir)
  end)
end
