-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local keyword_hl = vim.api.nvim_get_hl(0, { name = "Keyword" })
    local comment_hl = vim.api.nvim_get_hl(0, { name = "Comment" })

    vim.api.nvim_set_hl(0, "@boolean.elixir", { bold = true, fg = "fg" })
    vim.api.nvim_set_hl(0, "@string.special.symbol.elixir", { bold = true, fg = "fg" })
    vim.api.nvim_set_hl(0, "@constant.elixir", { bold = false, fg = "fg" })
    vim.api.nvim_set_hl(0, "@constant.builtin.elixir", { bold = true, fg = "fg" })
    vim.api.nvim_set_hl(0, "@keyword.elixir", { bold = true, fg = keyword_hl.fg })
    vim.api.nvim_set_hl(0, "@keyword.function.elixir", { bold = true, fg = keyword_hl.fg })
    vim.api.nvim_set_hl(0, "@comment.documentation.elixir", { bold = false, fg = comment_hl.fg })
  end,
})
