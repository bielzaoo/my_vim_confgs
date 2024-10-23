vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false

-- staline ====================================================
vim.cmd([[ let extension = expand('%:e') ]])
--=============================================================


-- Indent Blank Lines =========================================
vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.cmd([[
  hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFFFF
  let g:indentLine_fileTypeExclude = ['dashboard']
]])



-- ============================================================


-- Maps ========================================================
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Add empty lines
vim.keymap.set('n', 'op', 'o<Esc>k')
vim.keymap.set('n', 'oi', 'O<Esc>j')

vim.keymap.set('n', 'oo', 'A<CR>')

-- Create tab
vim.keymap.set('n', 'te', ':tabe<CR>')
-- navigate between buffers
vim.keymap.set('n', 'ty', ':bn<CR>')
vim.keymap.set('n', 'tr', ':bp<CR>')
-- delete buffer
vim.keymap.set('n', 'td', ':bd<CR>')

-- Create splits
vim.keymap.set('n', 'th', ':splitCR>')
vim.keymap.set('n', 'tv', ':vsplit<CR>')

-- Close splits and others
vim.keymap.set('n', 'tt', ':q<CR>')

-- Call command shortcut
vim.keymap.set('n', 'tc', ':!')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
---- end ==================================================
