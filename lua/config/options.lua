-- line numbering
-- enable line numbering
vim.opt.number = true

-- relative line numbers
vim.opt.relativenumber = true

-- line number gutter is 2 characters wide
vim.opt.numberwidth = 2
--

-- sign, scroll, and wrap
-- always show sign gutter
vim.opt.signcolumn = "yes"

-- scroll; 10 lines; 8 columns
vim.opt.scrolloff = 20
vim.opt.sidescrolloff = 20

-- wrapping off
vim.opt.wrap = false
--

-- tab spacing
-- convert tab to spaces
vim.opt.expandtab = true

-- space count
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- indent
vim.opt.smartindent = true
vim.opt.breakindent = true
--

-- netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--

-- backup
-- disable backup files
vim.opt.backup = false
vim.opt.writebackup = false
--

-- copy paste
-- use system clipboard
vim.opt.clipboard = "unnamedplus"
--

-- files
-- default file encoding
vim.opt.fileencoding = "utf-8"
--

-- highlight
-- highlight current line
vim.opt.cursorline = true

-- highlight search matches
vim.opt.hlsearch = true
--

-- colors
-- terminal colors
vim.opt.termguicolors = true
--

-- ui
-- hide mode
vim.opt.showmode = false

-- mouse
vim.opt.mouse = "a"

-- faster completion
vim.opt.updatetime = 100
--

-- collapsing
-- do not collapse
vim.opt.conceallevel = 0
--

-- splits
-- horizontal split below
vim.opt.splitbelow = true
-- vertical split right
vim.opt.splitright = true
--

-- keymaps
-- timeout for keys
vim.opt.timeoutlen = 1000
--

-- undo
-- persisted undo file
vim.opt.undofile = true
--

-- search
-- case insenstive search
vim.opt.ignorecase = true

-- match case if explicit
vim.opt.smartcase = true
--
