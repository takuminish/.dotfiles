local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
	cmd = 'lazygit',
	direction = 'float',
	hidden = true
})

function _lazygit_toggle()
	lazygit:toggle()
end

local status, term = pcall(require, 'toggleterm')
if (not status) then return end
term.setup{
    direction = 'float',
    float_opts = {
        border = 'single',
        winblend = 0
    }
}

vim.keymap.set('n', 'lg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true })