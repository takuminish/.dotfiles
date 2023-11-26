vim.g['fern#renderer'] = 'nvim-web-devicons'
vim.g['fern#default_hidden'] = 1

vim.cmd([[
    augroup mu-glyph-palette
      autocmd! *
      autocmd FileType fern call glyph_palette#apply()
      autocmd FileType nerdtree, startify call glyph_palette#apply()
    augroup END
]])