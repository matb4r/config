colorscheme ron
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set number
set numberwidth=1
set hlsearch
set incsearch
set ignorecase
syntax on
set ruler
set backspace=2
set cursorline
hi CursorLine cterm=none ctermbg=236
set mouse=n
map <ScrollWheelUp> <C-Y><C-Y><C-Y>
map <ScrollWheelDown> <C-E><C-E><C-E>
set laststatus=2
set showcmd
set ttimeoutlen=50
hi LineNr ctermbg=236
set relativenumber
:vnoremap < <gv
:vnoremap > >gv
nnoremap <F5> :call NoNumbers()<cr>
nnoremap <F6> :call Numbers()<cr>
nnoremap <F7> :call RelativeNumbers()<cr>
set pastetoggle=<F4>
set scrolloff=3

" do not break words
set formatoptions=1
set linebreak
" moving on wrapped text
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
"auto indent on wrapped text
set breakindent 

" moving lines up/down
noremap <C-K> ddkP
noremap <C-J> ddp

function! NoNumbers()
	set nonumber
	set norelativenumber
endfunc

function! Numbers()
	set number
	set norelativenumber
endfunc

function! RelativeNumbers()
	set number
	set relativenumber
endfunc
