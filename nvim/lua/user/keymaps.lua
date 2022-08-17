local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Open Lexplore (folder explorer)
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize +2<CR>", opts)
keymap("n", "<S-Down>", ":resize -2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- TODO: I need to understand more about buffers until I understand if I want this.
-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Open horizontal and vertical terminal
keymap("n", "<leader>to", ":split | :ter<CR>:resize 15<CR>", opts)
keymap("n", "<leader>tvo", ":vsplit | :ter<CR>", opts)

-- Projections
keymap("n", "<leader>av", ":AV<CR>", opts)
keymap("n", "<leader>as", ":AS<CR>", opts)
keymap("n", "<leader>rr", ":RR<CR>", opts)
keymap("n", "<leader>rv", ":RV<CR>", opts)
keymap("n", "<leader>rs", ":RS<CR>", opts)

-- Vim Test
keymap("n", "<leader>tn", ":TestNearest<CR>", opts)
keymap("n", "<leader>tf", ":TestFile<CR>", opts)
keymap("n", "<leader>ts", ":TestSuite<CR>", opts)
keymap("n", "<leader>tl", ":TestLast<CR>", opts)
keymap("n", "<leader>tv", ":TestVisit<CR>", opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- Telescope dropdown view without
keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>st", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)

-- NULL-LS
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting_sync(nil, 10000)<CR>", opts)

-- INSERT --
-- Press jk fast to escape
keymap("i", "jk", "<ESC>", opts)

-- VISUAL --
-- Stay in indent mode
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- Don't yank text replaced by pasting
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- TERMINAL --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Open horizontal and vertical terminal
keymap("t", "<leader>to", ":split | :ter<CR>:resize 15<CR>", opts)
keymap("t", "<leader>tvo", ":vsplit | :terminal<CR>", opts)
