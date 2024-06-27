vim.cmd("set nocompatible")            -- disable compatibility to old-time vi
vim.cmd("set showmatch")               -- show matching 
vim.cmd("set ignorecase")              -- case insensitive 
vim.cmd("set mouse=v")                 -- middle-click paste with 
vim.cmd("set hlsearch")                -- highlight search 
vim.cmd("set incsearch")               -- incremental search
vim.cmd("set tabstop=4")               -- number of columns occupied by a tab 
vim.cmd("set softtabstop=4")           -- see multiple spaces as tabstops so <BS> does the right thing
vim.cmd("set expandtab")               -- converts tabs to white space
vim.cmd("set shiftwidth=4")            -- width for autoindents
vim.cmd("set autoindent")              -- indent a new line the same amount as the line just typed
vim.cmd("set number")                  -- add line numbers
vim.cmd("set wildmode=longest,list")   -- get bash-like tab completions
vim.cmd("filetype plugin indent on")   --allow auto-indenting depending on file type
vim.cmd("syntax on")                   -- syntax highlighting
vim.cmd("set mouse=a")                 -- enable mouse click
vim.cmd("set clipboard=unnamedplus")   -- using system clipboard
vim.cmd("filetype plugin on")
vim.cmd("set ttyfast")                 -- Speed up scrolling in Vim
vim.cmd("nmap <c-s> :w<CR>")
vim.cmd("imap <c-s> <Esc>:w<CR>")


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
opts = {}

require("lazy").setup(plugins, opts)

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-macchiato"
