"Pathogen auto loads all plugins in .vim/bundle
" Got it via curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 
execute pathogen#infect()

filetype on "enable file type detection"
syntax on
colorscheme Tomorrow-Night

set lines=35 columns=150
set colorcolumn=90
set number

"Name space my key mappings"
let mapleader=","

"Reload vim config without having to restart editor"
"It says:
"map (Leader key + s) to the following command: :source ~/.vimrc and then press Enter"
map <leader>s : source ~/.vimrc<CR>

"Don't try to be compatible with older versions of VIM"
set nocompatible

"Keep more memory to speed things up"
set hidden
set history=100

"Have some logic when indenting. Intentionally left out tabstop & shiftwidth"
filetype indent on
set nowrap
set expandtab
set smartindent
set autoindent

"Vim should highlight search words"
set hlsearch

"Cancel a search with Escape:
nnoremap <silent> <Esc> : nohlsearch<Bar>:echo<CR>


"Nerdtree settings
"       right arrow to open a node
let NERDTreeMapActivateNode='<right>'
"       Display hidden files
let NERDTreeShowHidden=1
"       Toggle display of the tree with <leader>n
nmap <leader>n :NERDTreeToggle<CR>
"       Locate focused file in the tree w/ <leader>j
nmap <leader>j :NERDTreeFind<CR>
"       Always open tree when booting Vim but don't focus it
"autocmd VimEnter * NERDTree
"autocmd VIMEnter * wincmd p


