" Kyle's infamous .vimrc

" Some fixes I've had to make before.
"set t_kb=
"fixdel
set backspace=indent,eol,start

" I like having a single key (; vs SHIFT+4) for the end of the line, although I 
" have gotten used to $.
map ; $

" Abbreviations
abb ML meatloaf
abb syso System.out.println
abb syse System.err.println

" Indentation
" - http://www.jwz.org/doc/tabs-vs-spaces.html
" - http://tedlogan.com/techblog3.html
" - expandtab uses spaces; noexpandtab uses tab characters.
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set autoindent
set smarttab
if has('autocmd')
  filetype plugin indent on
endif

" Add some color
set t_Co=256
syntax enable
"colorscheme slate
"set cursorline

" Set up screen
set colorcolumn=81
highlight ColorColumn ctermbg=darkblue ctermfg=white
set ruler
"set nowrap
set number
set laststatus=2
set wildmenu
set scrolloff=1
set sidescrolloff=5
set display+=lastline

" Other random stuff from vim-sensible
set complete-=i
set nrformats-=octal
set ttimeout
set ttimeoutlen=100
set incsearch
"set hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
set showcmd
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
  endif
inoremap <C-U> <C-G>u<C-U>
if &history < 1000
  set history=1000
  endif
if &tabpagemax < 50
  set tabpagemax=50
  endif
if !empty(&viminfo)
  set viminfo^=!
  endif
set sessionoptions-=options
