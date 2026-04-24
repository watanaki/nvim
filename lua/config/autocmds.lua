-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 鼠标悬停自动显示 LSP hover 文档
vim.api.nvim_create_autocmd("CursorHold", {
  group = vim.api.nvim_create_augroup("lsp_hover", { clear = true }),
  callback = function()
    local opts = { focusable = false, close_events = { "CursorMoved", "InsertEnter" } }
    vim.lsp.buf.hover()
  end,
})

-- Ctrl+点击跳转到定义
vim.keymap.set("n", "<C-LeftMouse>", "<LeftMouse>gd", { desc = "Goto Definition" })

-- Highlight yank for 2 seconds
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ timeout = 2000 })
  end,
})
