local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- short hand function 
local keymap = vim.api.nvim_set_keymap

-- map space as leader

keymap( "", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--      normal mode = "n"
--      insert mode = "i"
--      visual mode = "v"
--      visual-block mode = "x"
--      term mode = "t"
--      command mode = "c"

-- swap : ;
keymap( "n" , ";" , ":", opts)
keymap( "n" , ":" , ";", opts)

-- uppaercase current word
keymap( "i" , "<C-u>" , "<Esc>viw~<Esc>ea" , term_opts )
keymap( "i" , "<C-BS>" , "<C-W>" , opts )

keymap( "n" , "<Leader>L" , ":noh<CR>" , opts )

keymap( "n" , "n" , "n:call HLNext(0.4)<CR>" , opts )
keymap( "n" , "N" , "N:call HLNext(0.4)<CR>" , opts )

-- spliting
keymap( "n" , "<Leader><C-e>" , ":vs<CR>" , opts)
keymap( "n" , "<Leader><C-o>" , ":split<CR>" , opts)

-- split movement
keymap( "n" , "<C-h>" , "<C-w>h", opts )
keymap( "n" , "<C-j>" , "<C-w>j", opts )
keymap( "n" , "<C-k>" , "<C-w>k", opts )
keymap( "n" , "<C-l>" , "<C-w>l", opts )

-- split resizing
keymap( "n" , "<C-Left>" , ":vertical resize +3<Cr>" , opts )
keymap( "n" , "<C-Right>" , ":vertical resize -3<Cr>" , opts )
keymap( "n" , "<C-Up>" , ":resize +3<Cr>" , opts )
keymap( "n" , "<C-Down>" , ":resize -3<Cr>" , opts )

-- closing splits
keymap( "n" , "<Leader>O" , "<C-w>o" , opts )
keymap( "n" , "<Leader>Q" , "<C-w>q" , opts )

-- navigate buffers
keymap( "n" , "<S-l>" , ":bnext<Cr>" , opts )
keymap( "n" , "<S-h>" , ":bprevious<Cr>" , opts )
    -- last used buffer
keymap( "n" , "Q" , ":b#<CR>" , opts ) 
keymap( "n" , "<Leader>x" , ":bd<CR>" , opts )

-- indenting properly
keymap( "v" , "<" , "<gv" , opts )
keymap( "v" , ">" , ">gv" , opts )

-- move text up and down
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Better terminal navigation -------------------- NEED CONSIDERATION
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts )
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts )
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts )
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts )

-- Editing init.lua from anywhere
keymap( "n" , "<Leader>vimrc" , ":e $MYVIMRC<CR>" , opts )
keymap( "n" , "<Leadr>sop" , "source $MYVIMRC<CR>" , opts )

-- telescope
keymap( "n" , "<Leader>ff" , "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>" , opts )
keymap( "n" , "<Leader>tt" , "<cmd>Telescope live_grep<CR>" , opts )

-- nvim-tree
keymap( "n" , "<Leader>ll" , ":NvimTreeToggle<CR>" , opts )
keymap( "n" , "<Leader>llr" , ":NvimTreeRefresh<CR>" , opts )

