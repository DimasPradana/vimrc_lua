local remap = vim.api.nvim_set_keymap

-- use jj instead of Esc
remap('i', 'jk', '<Esc><Esc>', { noremap = true })
remap('t', 'jk', '<C-\\><C-n>', { noremap = true })
remap('c', 'jk', '<Esc><Esc>', { noremap = true })

-- toggle luatree
remap('n', '<C-n>', '<CMD>LuaTreeToggle<CR>', { noremap = true })

-- toggle telescope.nvim
remap('n', '<C-p>', '<CMD>Telescope find_files<CR>', { noremap = true, silent = true })
remap('n', '<C-f>', '<CMD>lua require"plugins._telescope".grep_prompt()<CR>', { noremap = true, silent = true })

-- better movement between buffers
remap('n', '<C-h>', '<C-w><C-h>', { noremap = true })
remap('n', '<C-j>', '<C-w><C-j>', { noremap = true })
remap('n', '<C-k>', '<C-w><C-k>', { noremap = true })
remap('n', '<C-l>', '<C-w><C-l>', { noremap = true })

-- resize buffer easier
remap('n', '<Left>', '<CMD>vertical resize +2<CR>', { noremap = true })
remap('n', '<Right>', '<CMD>vertical resize -2<CR>', { noremap = true })
remap('n', '<Up>', '<CMD>resize +2<CR>', { noremap = true })
remap('n', '<Down>', '<CMD>resize -2<CR>', { noremap = true })

-- move lines using alt
remap('', '<A-j>', '<CMD>bd<CR>', { noremap = true })
remap('', '<A-h>', '<CMD>bp<CR>', { noremap = true })
remap('', '<A-l>', '<CMD>bn<CR>', { noremap = true })

-- move vertically by visual line on wrapped lines
remap('n', 'j', 'gj', { noremap = true })
remap('n', 'k', 'gk', { noremap = true })

-- better yank and delete behaviour
remap('n', 'dD', 'S<Esc>', { noremap = true })
remap('n', 'Y', 'y$', { noremap = true })

-- remove annoying exmode
remap('n', 'Q', '<Nop>', { noremap = true })
remap('n', 'q:', '<Nop>', { noremap = true })

-- copy to system clipboard
remap('v', '<A-y>', '"+y', { noremap = true })

-- no distraction mode for writing
remap("n", "<Leader>g", "<CMD>Goyo<CR>", { noremap = true })

-- run luafile on current file
remap("n", "<Leader>r", "<CMD>luafile %<CR>", { noremap = true })

-- toggle colorizer
remap("n", "<Leader>c", "<CMD>ColorizerToggle<CR>", { noremap = true })

-- better indenting experience
remap('v', '<', '<gv', { noremap = true })
remap('v', '>', '>gv', { noremap = true })

vim.cmd('command! -nargs=0 PreviewFile lua require"modules._util".xdg_open()') -- alternative way
remap(
  'n', 'gx', 'call v:lua.Util.xdg_open()<CR>',
  { noremap = true, silent = true }
)

-- easymotion
remap('n', 's', '<Plug>(easymotion-overwin-f2)', { noremap = false, silent = true })
