"Pathogen auto loads all plugins in .vim/bundle
"Got it via curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()

"Tried this & it wasn't worth it. Shift+left/right didn't skip words like I needed
"to.. really miss that. Ctrl+left/right skips too much.
"source $VIMRUNTIME/mswin.vim
"behave mswin

filetype on "enable file type detection"
syntax on
colorscheme Tomorrow-Night

set lines=55 columns=180
set colorcolumn=90
set number
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list


"Name space my key mappings"
let mapleader=","

"Reload vim config without having to restart editor"
"It says:
"map (Leader key + s) to the following command: :source ~/.vimrc and then press Enter"
map <leader>s : source ~/.vimrc<CR>

"Don't try to be compatible with older versions of VIM & keep the improvements of viM"
set nocompatible

"Make searches case insensitive
set ic

"Keep more memory to speed things up"
set hidden
set history=100

"Have some logic when indenting."
filetype indent on
set nowrap
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4

"Vim should highlight search words"
set hlsearch

"Cancel a search with Escape:
"This was bad for vim from the terminal because it would start in
"replace mode and would only allow navigation after placing itself in insert mode!
"nnoremap <silent> <Esc> : nohlsearch<Bar>:echo<CR>


"Nerdtree settings
"right arrow to open a node
let NERDTreeMapActivateNode='<right>'

"Display hidden files
let NERDTreeShowHidden=1

"Toggle display of the tree with <leader>n
nmap <leader>n :NERDTreeToggle<CR>

"Locate focused file in the tree w/ <leader>j
nmap <leader>j :NERDTreeFind<CR>

let NERDTreeIgnore = ['\.pyc$', '\.swp$', '\.jsmin$']

"Always open tree when booting Vim but don't focus it
"autocmd VimEnter * NERDTree
"autocmd VIMEnter * wincmd p

"Tag list settings
set tags=./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags,../../../../../../../tags;/


"Tagbar settings
"       toggle tagbar with F8
nmap <F8> :TagbarToggle<CR>

"On :w, remove all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

