local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    -- coc
    {'neoclide/coc.nvim', branch = 'release'},
    -- devicon
    {'nvim-tree/nvim-web-devicons'},
    -- fern
    {'lambdalisue/fern.vim', lazy = false, priority = 1000},
    {'TheLeoP/fern-renderer-web-devicons.nvim', dependencies = {'nvim-web-devicons'}},
    -- palette
    {'lambdalisue/glyph-palette.vim'},
    {'sainnhe/everforest', lazy = false, priority = 1500},
    -- git
    {'lewis6991/gitsigns.nvim'},
    -- snippet
    {'mlaursen/vim-react-snippets'},
    -- telescope
    {'nvim-telescope/telescope.nvim'},
    {'fannheyward/telescope-coc.nvim'},
    {'nvim-telescope/telescope-frecency.nvim'},
    {'fdschmidt93/telescope-egrepify.nvim', dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim'}},
    -- syntax highlight
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'JoosepAlviste/nvim-ts-context-commentstring'},
    -- terminal
    {'akinsho/toggleterm.nvim'},
    -- bar
    {'romgrk/barbar.nvim', dependencies = {'nvim-web-devicons'}},
})