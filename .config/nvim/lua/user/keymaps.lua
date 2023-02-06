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

-- All --
keymap("", "<C-A-L>", "<cmd>NvimTreeToggle<cr>", opts)

-- Debug --
keymap("", "<F5>", "<cmd>lua require'dap'.continue()<CR>", opts)
keymap("", "<F8>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("", "<F9>", "<cmd>lua require'dap'.repl.open()<CR>", opts)
keymap("", "<F10>", "<cmd>lua require'dap'.step_over()<CR>", opts)
keymap("", "<F11>", "<cmd>lua require'dap'.step_into()<CR>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-n>", "<C-w>h", opts)
keymap("n", "<C-e>", "<C-w>j", opts)
keymap("n", "<C-i>", "<C-w>k", opts)
keymap("n", "<C-o>", "<C-w>l", opts)
-- navigate code
keymap("n", "<C-l>", "<C-o>", opts)
keymap("n", "<C-k>", "<C-i>", opts)
-- Move windows
keymap("n", "<leader>wN", "<C-w>H", opts)
keymap("n", "<leader>wE", "<C-w>J", opts)
keymap("n", "<leader>wI", "<C-w>K", opts)
keymap("n", "<leader>wO", "<C-w>L", opts)
-- Resize with arrows
keymap("n", "<C-S-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-S-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-e>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-i>", "<Esc>:m .-2<CR>==gi", opts)

-- sane redo
keymap("n", "U", "<C-r>", opts)
-- join lines
keymap("n", "<leader>j", "J", opts)
keymap("v", "<leader>j", "J", opts)
-- get help for the command under the caret
keymap("n", "<leader>k", "K", opts)
keymap("v", "<leader>k", "K", opts)
-- save all buffers
keymap("n", "<leader>ww", ":wa<CR>", opts)
-- return to line before the caret
keymap("n", "<leader>i", "i<CR><ESC>", opts)
-- return to line after the caret
keymap("n", "<leader>a", "a<CR><ESC>", opts)
-- insert a blank line below
keymap("n", "<leader>l", "o<ESC>", opts)
-- insert a blank line above
keymap("n", "<leader>L", "O<ESC>", opts)
-- rename word under the caret and replace the occurences with '.'
keymap("n", "<leader>rr", "*Ncgn", opts)
-- close all the buffers but the current one
keymap("n", "<leader>to", ":tabonly<CR>", opts)
-- format the whole buffer
keymap("n", "<leader>=", "gg=G<C-o>", opts)
-- vertical split
keymap("n", "<leader>vs", ":vs<CR>", opts)
-- horizontal split
keymap("n", "<leader>hs", ":split<CR>", opts)
-- yank whole buffer
keymap("n", "Y", "ggyG<c-o>", opts)
-- move next , to a new line
keymap("n", "<leader>,," ,"f,a<CR><ESC>", opts)
-- move next . to a new line
keymap("n", "<leader>.." ,"f.i<CR><ESC>l", opts)
-- replace the word under the cursor with the yank
keymap("n", "<leader><leader>piw", "viwpyiw", opts)
-- change inside next parens
keymap("n", "cinb", "/(<CR>cib", opts)
-- delete inside next parens
keymap("n", "dinb", "/(<CR>dib", opts)

-- Insert --
-- Press ao fast to exit insert mode
keymap("i", "ao", "<ESC>", opts)
keymap("i", "a;", "<ESC>A;<ESC>", opts)

-- Visual --

-- Move text up and down
keymap("v", "<A-e>", ":m .+1<CR>==", opts)
keymap("v", "<A-i>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-e>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-i>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-n>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-e>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-i>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-o>", "<C-\\><C-N><C-w>l", term_opts)

---------------------------------
-- Colemak
---------------------------------
-- remapping hjkl to neio
keymap("n", "n", "h", opts)
keymap("v", "n", "h", opts)
keymap("n", "e", "j", opts)
keymap("v", "e", "j", opts)
keymap("n", "i", "k", opts)
keymap("v", "i", "k", opts)
keymap("n", "o", "l", opts)
keymap("v", "o", "l", opts)

-- fast neio moves
keymap("n", "N", "^", opts)
keymap("v", "N", "^", opts)
keymap("n", "E", "5j", opts)
keymap("v", "E", "5j", opts)
keymap("n", "I", "5k", opts)
keymap("v", "I", "5k", opts)
keymap("n", "O", "$", opts)
keymap("v", "O", "$", opts)

-- remapping vim neio to hjkl
keymap("n", "k", "n", opts)
keymap("n", "K", "N", opts)
keymap("v", "k", "n", opts)
keymap("v", "K", "N", opts)

keymap("n", "j", "e", opts)
keymap("n", "J", "E", opts)
keymap("v", "j", "e", opts)
keymap("v", "J", "E", opts)

keymap("n", "h", "i", opts)
keymap("n", "H", "I", opts)
keymap("v", "h", "i", opts)
keymap("v", "H", "I", opts)

keymap("n", "L", "O", opts)
keymap("n", "l", "o", opts)
keymap("v", "L", "O", opts)
keymap("v", "l", "o", opts)

-- neio text object
keymap("n", "viw", "viw", opts)
keymap("n", "vib", "vib", opts)
keymap("n", "vip", "vip", opts)
keymap("n", "viP", "viP", opts)
keymap("n", "viB", "viB", opts)
keymap("n", "vi'", "vi'", opts)
keymap("n", 'vi"', 'vi"', opts)
keymap("n", "vit", "vit", opts)
keymap("n", "vi(", "vi(", opts)

keymap("n", "vaw", "vaw", opts)
keymap("n", "vab", "vab", opts)
keymap("n", "vap", "vap", opts)
keymap("n", "vaP", "vaP", opts)
keymap("n", "vaB", "vaB", opts)
keymap("n", "va'", "va'", opts)
keymap("n", 'va"', 'va"', opts)
keymap("n", "vat", "vat", opts)
keymap("n", "va{", "va{", opts)
keymap("n", "va(", "va(", opts)

---------------------------------
-- System clipboard
---------------------------------
-- yank to system cb
keymap("n", "<leader>y", '"+y', opts)
keymap("v", "<leader>y", '"+y', opts)
-- cut to system cb
keymap("n", "<leader>d", '"+d', opts)
keymap("v", "<leader>d", '"+d', opts)
-- past from system cb after caret
keymap("n", "<leader>p", '"+p', opts)
keymap("v", "<leader>p", '"+p', opts)
-- past from system cb before caret
keymap("n", "<leader>P", '"+P', opts)
keymap("v", "<leader>P", '"+P', opts)
-- yank the whole buffer to system cb
keymap("n", "<leader>Y", 'gg"+yG', opts)
-- cut the whole buffer to system cb
keymap("n", "<leader>D", 'gg"+dG', opts)
