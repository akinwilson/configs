let g:mapleader=" "
call plug#begin("~/.vim/vendor")
if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'
" integrate with tmux 
Plug 'preservim/vimux'
" fast file picker 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" syntax errors 
Plug 'w0rp/ale'
" tab to space conversion on files 
Plug 'tpope/vim-sleuth'
" language support
Plug 'sheerun/vim-polyglot'
" language completion/preditions
Plug 'valloric/youcompleteme'
" pretty start up screen
Plug 'mhinz/vim-startify'
" allow copy and paste from system clipboard
set clipboard=unnamedplus
" allow mouse to work in visual mode for copy and paste 
set mouse=v
" set command to execute python script with make command 
" set makeprg=python3\ %
" set makeprg=clear\ &&\ cargo\ run\ %:p:h:e
call plug#end()

