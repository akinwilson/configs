let g:mapleader=" "
call plug#begin("~/.vim/vendor")
" basic config everyone agreess with 
Plug 'tpope/vim-sensible'
" more optinated than sensible 
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

"Display indentation level 
Plug 'Yggdroot/indentLine'

" roge colour scheme 
Plug 'mox-mox/vim-localsearch'

"complete text 
Plug 'ycm-core/youcompleteme'


" set command to execute python script with make command 
call plug#end()



" setting theme 
let g:airline_theme='simple'


" open vim output to tmux in vertical, rather than horizontal terminal widows  
let g:VimuxOrientation='h'

" size of termina to open; presentage 
let g:VimuxHeight=45



" allow copy and paste from system clipboard
set clipboard=unnamedplus
" allow mouse to work in visual mode for copy and paste 
set mouse=v
" dont show preview window for semantic compeleter 
set completeopt-=preview

" run current file with using makefile's make defition
"
" avoids you needing to specify different run-buffer commands 
" so define makefile in every respository.  
map <Leader>xm :write<CR>:call VimuxRunCommand("clear; make ")<CR> 

 


