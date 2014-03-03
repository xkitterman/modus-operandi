runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
filetype plugin indent on

set autoread

let g:netrw_liststyle=3
let g:netrw_preview=1

set number
set ruler

set cmdheight=3

" always display status bar
set laststatus=2

set spelllang=en_us

" default search settings
set ignorecase
set smartcase
set incsearch
set hlsearch

set hidden

set history=1000

set wildmenu
set wildmode=list:longest

set visualbell

set scrolloff=3

" default tab settings
set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

if has("autocmd")
   " specific settings based on filetype
   autocmd filetype make setlocal ts=2 sts=2 sw=2 noexpandtab
   autocmd filetype java setlocal ts=4 sts=4 sw=4 
endif

" convert current word being typed to all caps
inoremap <c-u> <esc>gUiwea

" window focus mappings
noremap <c-w> <c-w>w
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" window movement mappings

" easy editing of files in current working directory
noremap <leader>ew :e <c-r>=expand("%:p:h") . "/" <cr>
noremap <leader>es :sp <c-r>=expand("%:p:h") . "/" <cr>
noremap <leader>ev :vsp <c-r>=expand("%:p:h") . "/" <cr>
noremap <leader>et :tabe <c-r>=expand("%:p:h") . "/" <cr>

" toggle display of unprintable characters
nnoremap <silent> <leader>l :set list!<cr>

" toggle spell check
nnoremap <silent> <leader>s :set spell!<cr>

nnoremap <leader>e :Explore<cr>

nnoremap <leader>v :vsp $MYVIMRC<cr>
nnoremap <leader>g :vsp $MYGVIMRC<cr>

command! Source source %
command! Cd cd %:p:h

" autospell corrections
abbr accross across
abbr becuase because
abbr hte the
abbr intial initial
abbr manger manager

if has("unix")
   " vim settings specific to unix

   " hidden character settings
   set listchars=tab:â–¹\ ,eol:Â¬

elseif has("win32") || has("win64")
   " vim settings specific to windows

   " hidden character settings
   set listchars=tab:»\ ,eol:¬
endif
