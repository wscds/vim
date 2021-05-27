let mapleader=" "
set autoindent
set hlsearch
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set background=dark
set ic
set scrolloff=6
set backspace=indent,eol,start
set clipboard=unnamedplus



let g:airline_theme="dracula"

let g:ctrlp_map="<c-p>"
let g:ctrlp_cmd="CtrlP"
let g:NERDTreeWinSize=20

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
"let g:UltiSnipsBackwardTrigger="<c-n>"

colorscheme deus
map Q :q<CR>
map <leader>l :vsp<CR>
map <leader>k :sp<CR>
map <leader>r :!ranger<CR>


map <leader>st :Startify<CR>
map R :!ranger<CR>

map <up> :res -5<CR>
map <down> :res +5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

nmap <silent> <F4> :TagbarToggle<CR>  
nnoremap <leader>n :NERDTreeFocus<CR>
nmap s <Plug>(easymotion-s2)

let g:ycm_global_ycm_extra_conf='~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'

noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1

inoremap jj <Esc>
inoremap ll <Esc>la
" inoremap ( ()<ESC>i
" inoremap { {}<ESC>i
" inoremap ) <c-r>=ClosePair(')')<CR>
" inoremap [ []<ESC>i
" inoremap ] <c-r>=ClosePair(']')<CR>
" inoremap " ""<ESC>i
" inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
		        return "\<Right>"
	else
			    return a:char
	endif
endfunction

call plug#begin('~/.vim/plugged')
    Plug 'SirVer/ultisnips'
    Plug 'valloric/youcompleteme'
    Plug 'mbbill/undotree'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'vim-scripts/bufexplorer.zip'
    Plug 'gcmt/wildfire.vim'
    Plug 'vim-scripts/c.vim'
    Plug 'bling/vim-bufferline'
    Plug 'vim-airline/vim-airline'
    Plug 'majutsushi/tagbar'
    Plug 'mhinz/vim-startify'
    Plug 'preservim/nerdtree'
    Plug 'yggdroot/indentline'
    Plug 'w0ng/vim-hybrid'
    Plug 'easymotion/vim-easymotion'
    Plug 'kien/ctrlp.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'Chiel92/vim-autoformat'
    Plug 'dracula/vim'
    Plug 'ajmwagar/vim-deus'
    Plug 'junegunn/fzf.vim'
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'jiangmiao/auto-pairs'
call plug#end()
