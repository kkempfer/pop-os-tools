" -----------------------------------------------------------------------------
" Vim config based on vim-plug plugin manager
" -----------------------------------------------------------------------------

" Install vim-plug if not found.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins.
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

" Vim help for vim-plug itself (e.g. :help plug-options).
Plug 'junegunn/vim-plug'

" Gruvbox Community theme.
Plug 'gruvbox-community/gruvbox'

" Languages and file types.
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tommason14/lammps.vim'

" Initialize plugin system.
call plug#end()

" -----------------------------------------------------------------------------
" Colors
" -----------------------------------------------------------------------------

" .............................................................................
" gruvbox-community/gruvbox
" .............................................................................

" Specific colorscheme settings (must go before setting the colorscheme).
let g:gruvbox_contrast_dark='hard'

" Set the color scheme.
colorscheme gruvbox
set background=dark

" -----------------------------------------------------------------------------
" Plugin settings, mappings and autocommands
" -----------------------------------------------------------------------------

" .............................................................................
" iamcco/markdown-preview.nvim
" .............................................................................

let g:mkdp_auto_close=0
let g:mkdp_markdown_css='~/.vim/lib/github-markdown.css'

