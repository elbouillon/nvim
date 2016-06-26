set clipboard+=unnamedplus
let enable_bold_font = 1
let mapleader = ','
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
""""""""""""""""""""""""
" Base config
""""""""""""""""""""""""
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set cursorline

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" Search config
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic 
"
""""""""""""""""""""""""
" Shortcuts
""""""""""""""""""""""""
nnoremap Q @q   " Use Q to execute default register.

""""""""""""""""""""""""
"Turn Off Swap Files 
""""""""""""""""""""""""
set noswapfile
set nobackup
set nowb

""""""""""""""""""""""""
" Persistent Undo
""""""""""""""""""""""""
" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'mrtazz/molokai.vim'
" A simple, easy-to-use Vim alignment plugin.
Plug 'junegunn/vim-easy-align'
" All Tpope super usefull plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
Plug 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion=[]
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

Plug 'thoughtbot/vim-rspec'
Plug 'keith/rspec.vim'
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader><Leader>s :call RunNearestSpec()<CR>
map <Leader><Leader>l :call RunLastSpec()<CR>
map <Leader><Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"

Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
let g:rspec_command = "Dispatch rspec --color --format=progress --no-profile {spec}"

Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plug 'scrooloose/nerdtree'

" syntax highlighting
Plug 'posva/vim-vue'
Plug 'slim-template/vim-slim'

" snippets
Plug 'SirVer/ultisnips'
" let g:UltiSnipsExpandTrigger="<C-j>"
Plug 'honza/vim-snippets'
" let g:UltiSnipsExpandTrigger="<C-$>"
" let g:UltiSnipsJumpForwardTrigger="<C-b>"
" let g:UltiSnipsJumpBackwardTrigger="<C-z>"
" let g:UltiSnipsEditSplit="vertical"


call plug#end()

""""""""""""""""""""""""""""""
" color and theme
""""""""""""""""""""""""""""""
color molokai
""""""""""""""""""""""""""""""

map <leader>a :Ag!<space>
map <leader>A :Ag! <C-R><C-W><CR>

nnoremap Q @q   " Use Q to execute default register.
""""""""""""""""""""""""
" key mapping for window navigation
""""""""""""""""""""""""
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resize vertical split
map <leader>h 20<C-w>>
map <leader>l 20<C-w><

nnoremap <leader>ns :nohlsearch<CR><C-L>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>r :source /Users/mkurmann/.config/nvim/init.vim<CR>
nnoremap <leader>q :q<CR>
imap éé <Esc>
