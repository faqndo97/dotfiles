local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  debug = false,
  sources = {
    diagnostics.standardrb,
    -- diagnostics.erb_lint,
    diagnostics.eslint,
    -- formatting.standardrb,
    -- formatting.erb_lint,
  },
})
