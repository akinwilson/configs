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

" allow copy and paste from system clipboard
set clipboard=unnamedplus

" allow mouse to work in visual mode for copy and paste 
set mouse=v

call plug#end()

