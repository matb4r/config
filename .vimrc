colorscheme ron
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
