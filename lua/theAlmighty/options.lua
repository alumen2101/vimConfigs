local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
    fileencoding = "utf-8",
    hlsearch = true,
    ignorecase = true,
    mouse = "a",
    pumheight = 10,
    showmode = true,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    writebackup = false,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 4,
    sidescrolloff = 8,
    guifont = "monospace:h17",
    background = "dark",
}

vim.opt.shortmess:append "c"

-- Tokyonight options
--vim.g.tokyonight_style = "night"
vim.cmd[[ colorscheme torte ]]
--vim.g.tokyonight_italic_comments = false
--vim.g.tokyonight_italic_keywords = false

for key, value in pairs(options) do
    vim.opt[key] = value
end
