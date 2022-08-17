local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug = false,
  sources = {
    diagnostics.rubocop,
    diagnostics.erb_lint,
    diagnostics.eslint,
    formatting.rubocop,
    formatting.erb_lint,
    formatting.eslint,
  },
})
