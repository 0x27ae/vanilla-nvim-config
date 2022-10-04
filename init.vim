:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set splitbelow

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' "STATUS BAR
Plug 'https://github.com/Mofiqul/dracula.nvim' "THEME
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim' "INDENTATION GUIDE
Plug 'https://github.com/junegunn/vim-plug' "SHORT PLUGIN LINKS WORK NOW
Plug 'https://github.com/vim-airline/vim-airline-themes' "STATUS BAR THEME
Plug 'https://github.com/ryanoasis/vim-devicons' "ICON PACK
Plug 'https://github.com/preservim/nerdtree' "NERD TREE
Plug 'https://github.com/preservim/tagbar' " TAG BAR FOR CODE NAVIGATION
Plug 'https://github.com/aserowy/tmux.nvim' "TMUX
Plug 'https://github.com/nvim-treesitter/nvim-treesitter' "ANOTHER HIGHLIGHTER
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty' "SYNTAX HIGHLIGHTER FOR FILLING THE GAPS IN NVIM-TREESITTER
Plug 'https://github.com/tpope/vim-surround' "CHANGE THE CONTAINER SYMBOLS
Plug 'https://github.com/tpope/vim-commentary' "COMMENTER
Plug 'https://github.com/psliwka/vim-smoothie' "SMOOTH SCROLLING PLUGIN
Plug 'https://github.com/pangloss/vim-javascript' "JS STUFF
Plug 'https://github.com/junegunn/fzf' "FZF
Plug 'https://github.com/EdenEast/nightfox.nvim' "NIGHT FOX THEMES
Plug 'https://github.com/jacoborus/tender.vim' "TENDER THEME
Plug 'https://github.com/ellisonleao/gruvbox.nvim' "GRUV BOX THEME
Plug 'https://github.com/jiangmiao/auto-pairs' "AUTO PAIRS
Plug 'https://github.com/bfrg/vim-cpp-modern' "VIM CPP HIGHLIGHTING
Plug 'https://github.com/Xuyuanp/scrollbar.nvim' "SCROLL BAR
Plug 'https://github.com/dominikduda/vim_current_word' "CURRENT WORD HIGHLIGHTER
Plug 'https://github.com/neovide/neovide' "SMOOTH CURSOR
Plug 'https://github.com/alvan/vim-closetag' "HTML TAGS ASSIST

call plug#end()

:set encoding=UTF-8
colorscheme	gruvbox
:set background=dark

let mapleader = " "
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-s> : :w!<CR>

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
let g:NERDTreeMinimalUI = 0

let g:vim_current_word#highlight_current_word = 0

let g:smoothie_enabled=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

