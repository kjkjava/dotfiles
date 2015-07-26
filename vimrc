" Kyle's infamous .vimrc

" Some fixes I've had to make before
":set t_kb=
":fixdel
":set backspace=indent,eol,start

:map ; $

:abb ML meatloaf
:abb syso System.out.println
:abb syse System.err.println

" Indentation
" - http://www.jwz.org/doc/tabs-vs-spaces.html
" - http://tedlogan.com/techblog3.html
" - expandtab uses spaces; noexpandtab uses tab characters.
:set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
:set smartindent

":set nowrap
:set number

" Add some color
:set t_Co=256
:colorscheme slate
:syntax on
":set cursorline

" Highlight long lines
:set colorcolumn=81
:highlight ColorColumn ctermbg=darkblue ctermfg=white

