" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Lua
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'

  " Telescope
  Plug 'nvim-telescope/telescope.nvim'

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'

  " Change dates fast
  Plug 'tpope/vim-speeddating'
  
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  
  " Files
  Plug 'tpope/vim-eunuch'
  
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  
  " Surround
  Plug 'tpope/vim-surround'
  
  " Better Comments
  Plug 'tpope/vim-commentary'
  " Plug 'preservim/nerdcommenter'
  
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  
  " auto set indent settings
  Plug 'tpope/vim-sleuth'
  
  " autoread files
  Plug 'djoshea/vim-autoread'
  
  " autosave
  Plug '907th/vim-auto-save'
  
  " search
  Plug 'ctrlpvim/ctrlp.vim'
  
  " PHP
  Plug 'friendsofphp/php-cs-fixer'
  " PHPDoc
  Plug 'sumpygump/php-documentor-vim'
  
  " Debugger
  Plug 'joonty/vdebug'
  
  " File Tree
  Plug 'scrooloose/nerdtree'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'tpope/vim-ragtag'

  " Text Navigation
  Plug 'justinmk/vim-sneak'
  Plug 'unblevable/quick-scope'
  " Plug 'easymotion/vim-easymotion'
  
  " Add some color
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/rainbow_parentheses.vim'
  
  " Better Syntax Support
  " Plug 'sheerun/vim-polyglot'
  
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  
  " Auto pairs for '(' '[' '{' 
  Plug 'jiangmiao/auto-pairs'
  
  " Closetags
  Plug 'alvan/vim-closetag'
  
  " Themes
  " Plug 'christianchiarulli/onedark.vim'
  Plug 'mhartington/oceanic-next'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'arcticicestudio/nord-vim'
  " Plug 'dracula/vim'
  " Plug 'kaicataldo/material.vim'
  " Plug 'NLKNguyen/papercolor-theme'
  " Plug 'tomasiser/vim-code-dark'
  
  " Status Line
  Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  
  " Ranger
  " Plug 'francoiscabrol/ranger.vim'
  " Plug 'rbgrouleff/bclose.vim'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  
  " Git
  " Plug 'mhinz/vim-signify'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  
  " Terminal
  " Plug 'voldikss/vim-floaterm'
  
  " Start Screen
  Plug 'mhinz/vim-startify'
  
  " Vista
  Plug 'liuchengxu/vista.vim'
  
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  
  " Zen mode
  Plug 'junegunn/goyo.vim'
  
  " Making stuff
  Plug 'neomake/neomake'
  
  " Snippets
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  
  " Better Comments
  " Plug 'jbgutierrez/vim-better-comments'
  
  " Echo doc
  " Plug 'Shougo/echodoc.vim'
  " Interactive code
  " Plug 'ChristianChiarulli/codi.vim'
  " Vim Wiki
  " Plug 'https://github.com/vimwiki/vimwiki.git'

call plug#end()

" Automatically install missing plugins on startup
"autocmd VimEnter *
"  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \|   PlugInstall --sync | q
"  \| endif
