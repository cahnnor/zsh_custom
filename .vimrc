" ------------------------------------ Introduction  ----------------------------------- "
" I am new to vim. I've always opted to use nano when working on remote hosts
" and vscode for local dev so I've copy pasted many of these settings.
" My goal here is to make use of no plugins for maximum compatibility and    
" safety on remote hosts. That makes some sacrifices for UX and a person who
" uses Vim full-time probably wouldn't like this. What I want out of this
" is a really good nano, not a replacement for my IDE. Maybe someday,
" but not now. So I'm fine sacrificing things to keep it useful, predictable,
" and as easy as possible to use while downloading nothing aside from vim.


" ----------------------------------- Basic Settings ----------------------------------- "
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Colours
colorscheme habamax

" Turn on line numbers by default
set number

" Turn on syntax highlighting
syntax on

" highlight entire line that the cursor is on
set cursorline

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=30

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ----------------------------------- Directory Tree ----------------------------------- "
"  Makes vim more IDE-like.
"  lives on the left with no help banner on the top
"  opens files on the right split with enter, in new tabs with t
"  Reopens itself in the new tab to appear like a project drawer.

" settings
let g:netrw_banner=0
let g:netrw_winsize=15
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide='\.swp$'
set termwinsize=15x0

" Open on startup
autocmd VimEnter * Lexplore

" Open on newtab
" tl;dr we're abusing Explore here so it gets wonky.
autocmd TabNew * 85Lexplore!

" --------------------------------------- Helpers -------------------------------------- "
" open terminal below all splits
cabbrev bterm bo term
cabbrev qt tabclose

" Show tabline
set showtabline=2

" Map Ctrl+[arrow] to navigate windows`
nnoremap <silent> <C-Left> <C-w>h
nnoremap <silent> <C-Down> <C-w>j
nnoremap <silent> <C-Up> <C-w>k
nnoremap <silent> <C-Right> <C-w>l


" Increase/descrease window split size
if bufwinnr(1)
	map + <C-W>+
	map - <C-W>-
endif

