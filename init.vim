:set number
:set relativenumber
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
Plug 'https://github.com/preservim/nerdtree' "NERD TREE
Plug 'https://github.com/preservim/tagbar' " TAG BAR FOR CODE NAVIGATION
Plug 'https://github.com/nvim-treesitter/nvim-treesitter' "ANOTHER HIGHLIGHTER
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty' "SYNTAX HIGHLIGHTER FOR FILLING THE GAPS IN NVIM-TREESITTER
Plug 'https://github.com/tpope/vim-surround' "CHANGE THE CONTAINER SYMBOLS
Plug 'https://github.com/tpope/vim-commentary' "COMMENTER
Plug 'https://github.com/psliwka/vim-smoothie' "SMOOTH SCROLLING PLUGIN
Plug 'https://github.com/pangloss/vim-javascript' "JS STUFF
Plug 'https://github.com/EdenEast/nightfox.nvim' "NIGHT FOX THEMES
Plug 'https://github.com/jacoborus/tender.vim' "TENDER THEME
Plug 'https://github.com/ellisonleao/gruvbox.nvim' "GRUV BOX THEME
Plug 'https://github.com/jiangmiao/auto-pairs' "AUTO PAIRS
Plug 'https://github.com/bfrg/vim-cpp-modern' "VIM CPP HIGHLIGHTING
Plug 'https://github.com/alvan/vim-closetag' "HTML TAGS ASSIST
Plug 'https://github.com/vimwiki/vimwiki' "VIMWIKI FOR TAKING NOTES
Plug 'https://github.com/ellisonleao/glow.nvim' "GLOW MARKDOWN
Plug 'https://github.com/nvim-telescope/telescope.nvim' "TELESCOPE TO FIND FILES
Plug 'https://github.com/nvim-lua/plenary.nvim' "TELESCOPE DEPENDENCY
Plug 'https://github.com/norcalli/nvim-colorizer.lua' "SHOWS COLOR FOR COLOR CODES
Plug 'https://github.com/RRethy/vim-illuminate' "CURSOR WORD HIGHLIGHTER
Plug 'https://github.com/frazrepo/vim-rainbow' "RAINBOW BRACKETS
Plug 'https://github.com/Xuyuanp/scrollbar.nvim' "SCROLLBAR

call plug#end()

:set encoding=UTF-8
colorscheme	gruvbox
:set background=dark

let mapleader = " "
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-s> :w!<CR>
nnoremap <leader>ff :Telescope find_files<CR>

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:NERDTreeDirArrowExpandable="➕"
let g:NERDTreeDirArrowCollapsible="➖"
let g:NERDTreeMinimalUI = 0

let g:CommandTPreferredImplementation='lua'

let g:rainbow_active = 1

let g:smoothie_enabled=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

