" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" COC
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" directory
Plug 'preservim/nerdtree'
" view & search
" Plug 'liuchengxu/vista.vim'
Plug 'majutsushi/tagbar'
" buffer tabs
" Plug 'https://github.com/ap/vim-buftabline'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" dev icon
Plug 'ryanoasis/vim-devicons'
" git
Plug 'Xuyuanp/nerdtree-git-plugin'

" Code completion
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'https://github.com/joshdick/onedark.vim'

" ------------ LANGUAGE SUPPORT ---------------
" Rust
Plug 'rust-lang/rust.vim'
" Go
Plug 'fatih/vim-go', { 'tag': '*' }

" ----------- theme ------------
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/rakr/vim-one'
Plug 'sainnhe/edge'
call plug#end()

set encoding=UTF-8

set termguicolors
set nowrap
set backspace=indent,eol,start
set ruler
set number
"set showcmd
set incsearch
set hlsearch
set mouse=a
"set updatetime=300
"set cmdheight=1

" ---------- custom themme plugin --------
" let g:one_allow_italics = 1
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1

syntax enable
set background=dark
colorscheme one

" --------- Custom binding -----------
map <space>q :noh <CR>
map qq :q <CR>
map fs :w <CR>
nnoremap <space>w <C-w>

nnoremap <silent> gl :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> gd :YcmCompleter GoToDefinition<CR>
nnoremap <silent> gi :YcmCompleter GoToImplementation<CR>
nnoremap <silent> gr :YcmCompleter GoToReferences<CR>

" --------- ycm setting ----------
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" ---------- airline setting ------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='one'
let g:airline#extensions#tabline#buffer_nr_show = 1

" ------------ nerdtree setting -------------
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <space>t :NERDTreeToggle <CR>
" automatically close when windows is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" --------- Rust setting ----------
let g:rustfmt_autosave = 1

" --------- Go setting ------------
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_def_mapping_enabled = 0

let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_function_parameters = 1

" nnoremap <silent> gdp :GoDefPop 1 <CR>
" nnoremap <silent> gi :GoImplements <CR>
" nnoremap <silent> gh :GoInfo <CR>

" ------------- Buffer key binding ---------------
nnoremap <silent> <space>bn :bnext<CR>
nnoremap <silent> <space>bp :bprevious<CR>
nnoremap <silent> <space>bd :bd<CR>
nnoremap <silent> <space>bg :call GotoNBuffer(getchar())<CR>
:function! GotoNBuffer(number)
	if (a:number == 1)
		execute ":bfirst"
	else
		let nmb = a:number-1
		execute ":bfirst"
		execute ":".nmb."bn"
	endif
:endfunction
