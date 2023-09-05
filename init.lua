require('settings')
require('plugins')
require('keymaps')


-- config lua line
require('lualine').setup()

-- config terminal
require('configs.toggleterm')

-- config lsp
require('configs.lsp')

-- config kanagawa
local themeStatus, kanagawa = pcall(require, "kanagawa")

if themeStatus then
	vim.cmd("colorscheme kanagawa")
else
	return
end
