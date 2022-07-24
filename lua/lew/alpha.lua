local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require "alpha.themes.dashboard"

local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
  b.opts.hl_shortcut = "Macro"
  return b
end

local icons = require("lew.icons")

-- local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
"                     ,                          ",
"                ,.  | \\                        ",
"               |: \\ ; :\\                      ",
"               :' ;\\| ::\\                     ",
"                \\ : | `::\\                    ",
"                _)  |   `:`.                    ",
"              ,' , `.    ;: ;                   ",
"            ,' ;:  ;\"'  ,:: |_                 ",
"           /,   ` .    ;::: |:`-.__             ",
"        _,' _o\\  ,::.`:' ;  ;   . '            ",
"    _,-'           `:.          ;\"\"\\,        ",
" ,-'                     ,:         `-;,        ",
" \\,                       ;:           ;--._   ",
"  `.______,-,----._     ,' ;:        ,/ ,  ,`   ",
"         / /,-';'  \\     ; `:      ,'/,::.:::  ",
"       ,',;-'-'_,--;    ;   :.   ,',',;::::::   ",
"      ( /___,-'     `.     ;::,,'o/  ,:::::::   ",
"       `'             )    ;:,'o /  ;\"-   -::  ",
"                      \\__ _,'o ,'         ,::  ",
"                         ) `--'       ,..::::   ",
"                         ; `.        ,:::::::   ",
"                          ;  ``::.    :::::::   ",

	-- [[                               __                ]],
	-- [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	-- [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	-- [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	-- [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	-- [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
	button("f", icons.documents.Files .. " Find file", ":Telescope find_files <CR>"),
	button("e", icons.ui.NewFile .. " New file", ":ene <BAR> startinsert <CR>"),
	button(
		"p",
		icons.git.Repo .. " Find project",
		":lua require('telescope').extensions.projects.projects()<CR>"
	),
	button("r", icons.ui.History .. " Recent files", ":Telescope oldfiles <CR>"),
	button("g", icons.ui.List .. " Find text", ":Telescope live_grep <CR>"),
	button("s", icons.ui.SignIn .. " Find Session", ":Telescope sessions save_current=false <CR>"),
	button("c", icons.ui.Gear .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
	button("u", icons.ui.CloudDownload .. " Update", ":PackerSync<CR>"),
	button("q", icons.ui.SignOut .. " Quit", ":qa<CR>"),
}
local function footer()
	-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "lewpoly"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Float"
dashboard.section.header.opts.hl = "Float"
dashboard.section.buttons.opts.hl = "Function"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
