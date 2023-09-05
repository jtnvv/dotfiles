local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  "tsserver", "eslint",
  "lua_ls",
  "rust_analyzer",
  "clangd",
})

lsp.on_attach(
  function(client, bufnr)
    local opts = {buffer = bufnr, remap=false}
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>m", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
end)
lsp.nvim_workspace()
lsp.setup()
