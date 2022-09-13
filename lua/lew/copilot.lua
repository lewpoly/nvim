-- For copilot.vim
-- vim.g.copilot_filetypes = {
--   ["*"] = false,
-- }

-- vim.cmd [[
--   imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")
--   let g:copilot_no_tab_map = v:true
-- ]]

local copilot_status_ok, copilot = pcall(require, "copilot")
if not copilot_status_ok then
  return
end

local cmp_status_ok, copilot_cmp = pcall(require, "copilot_cmp")
if not cmp_status_ok then
  return
end

copilot.setup {
  panel = { -- no config options yet
    enabled = true,
  },
  ft_disable = { "markdown" },
  -- plugin_manager_path = vim.fn.stdpath "data" .. "/site/pack/packer",
  server_opts_overrides = {
    -- trace = "verbose",
    settings = {
      advanced = {
        -- listCount = 10, -- #completions for panel
        inlineSuggestCount = 3, -- #completions for getCompletions
      },
    },
  },
}

copilot_cmp.setup {
  method = "getCompletionsCycling",
}
