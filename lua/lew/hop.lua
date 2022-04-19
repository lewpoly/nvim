local status_ok, hop = pcall(require, "hop")
if not status_ok then
  return
end
hop.setup()
vim.api.nvim_set_keymap("", "s", ":HopChar2<cr>", { silent = true })
vim.api.nvim_set_keymap("", "S", ":HopWord<cr>", { silent = true })
vim.cmd("hi HopNextKey guifg=#d4d4d4")
vim.cmd("hi HopNextKey1 guifg=#9cdcfe")
vim.cmd("hi HopNextKey2 guifg=#6ba8db")
