"VIMRC " {{{1
nnoremap <Space>s :<C-u>source $HOME/.vimrc<CR>
set foldmethod=marker

"Basic " {{{1
set nocompatible
set noundofile
sy on

set number
set ts=4 sw=4 sts=0
set expandtab
set incsearch
set cursorline
set ruler
set hlsearch
set ambiwidth=double
set showcmd
set showmatch
set nobackup
set autoread
set scrolloff=1000000
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c%V%8P
set splitbelow
set splitright

filetype on
filetype indent on
filetype plugin on

" Key Mapping " {{{1
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-u> <C-e><C-u>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

nnoremap wh <C-u>h
nnoremap wj <C-u>j
nnoremap wk <C-u>k
nnoremap wl <C-u>l
nnoremap p p=']
noremap <F8> gg=G``

nnoremap g/ :<C-u>vimgrep /<C-r>//j % \| cwindow<Return>

" when search words
nnoremap n nzzzv
nnoremap N Nzzzv

" tag jump while screen is active
nnoremap t <Nop>
nnoremap tt <C-]>
nnoremap tj :<C-u>tag<CR>
nnoremap tk :<C-u>pop<CR>
nnoremap tl :<C-u>tags<CR>

" tab control
nnoremap tn :<C-u>tabnew<CR>
nnoremap th :<C-u>tabprev<CR>
nnoremap tl :<C-u>tabnext<CR>
nnoremap tc :<C-u>tabclose<CR>

" script " {{{1
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
      return "\<TAB>"
    else
      if pumvisible()
        return "\<C-N>"
      else
        return "\<C-N>\<C-P>"
      end
    endif
  endfunction
inoremap <silent> <tab> <c-r>=InsertTabWrapper()<cr>

