set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
syntax on  "Enables syntax highlighting for programming languages
set guifont=Consolas:h14:cDEFAULT
set mouse=a		 	"Allows you to click around the text editor with your mouse to move the cursor
set showmatch	  	"Highlights matching brackets in programming languages
set autoindent  	"If you're indented, new lines will also be indented
set smartindent  	"Automatically indents lines after opening a bracket in programming languages
set cindent 		"
set backspace=2  	"This makes the backspace key function like it does in other programs.
set tabstop=4  		"How much space Vim gives to a tab
set number  		"Enables line numbering
set smarttab  		"Improves tabbing
set shiftwidth=4  	"Assists code formatting
set wrap
set textwidth=80    "For wrapping text
set hlsearch  		"Set search Highlights
set background=dark
colorscheme gruvbox "colorscheme molokai Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.
"setlocal spell  	"Enables spell checking (CURRENTLY DISABLED because it's kinda annoying). Make sure to uncomment the next line if you use this.
"set spellfile=~/.vimwords.add  "The location of the spellcheck dictionary. Uncomment this line if you uncomment the previous line.
"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"--- Ends navigation commands
"--- For saving documents
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
"--- Ends saving documents
"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
"--- End sweet menu
set colorcolumn=110
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")
"folding settings
set foldmethod=syntax 	"Lets you hide sections of code
set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
set foldlevel=1   	    "this is just what i use
set foldclose=all
set omnifunc=syntaxcomplete#Complete
" Disabling normal arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
