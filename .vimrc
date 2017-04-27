:version 4.0
execute pathogen#infect()
filetype plugin indent on

" PASTE ISSUES:
" :set paste
" :set nopaste

"set background=dark
"colorscheme solarized
set nu	    		" line numbers (off: nonu)
set t_Co=256		" 256 colors
syntax enable		" highlight syntax
set hlsearch		" highlight search (off: nohlsearch)
set hidden
set report=1
set autowrite
set nobackup
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
"set mouse=n
"set textwidth=80    " enforce 80 character lines
cab aspe :w<CR>:!aspell -e -c  %<CR>:e<CR><CR>

" :if version > 700
" 
"    " Highlight extra whitespace
"    highlight ExtraWhitespace ctermbg=lightgreen
"    :au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"    :au InsertLeave * match ExtraWhitespace /\s\+$/
"
"    " Highlight lines over 80 characters
"    highlight TooMuchLine ctermbg=lightblue
"    :au BufWinEnter * let w:m2=matchadd('TooMuchLine', '\%>80v.\+', -1)
"
":endif

" Tab stuff
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
" set smartindent
" set autoindent

" Let VIM quit if multiple buffers are open
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \    exe "normal g`\"" |
    \ endif

" Key Mappings
" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Powerline fonts
let g:airline_powerline_fonts = 1
