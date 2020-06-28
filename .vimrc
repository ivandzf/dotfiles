" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc extensions
" let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'ianks/vim-tsx'

"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'

" directory
Plug 'preservim/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'scrooloose/nerdcommenter'

Plug 'rhysd/vim-clang-format'

" view & search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'liuchengxu/vista.vim'
Plug 'majutsushi/tagbar'

" buffer tabs
" Plug 'https://github.com/ap/vim-buftabline'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" dev icon
" Plug 'ryanoasis/vim-devicons'

" git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'zivyangll/git-blame.vim'

" vim multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Code completion
" Plug 'https://github.com/ycm-core/YouCompleteMe'

" Indent
" Plug 'Yggdroot/indentLine'

" motion
" Plug 'yuttie/comfortable-motion.vim'

" rest console
Plug 'diepm/vim-rest-console'

" notes
Plug 'https://github.com/xolox/vim-notes'
Plug 'https://github.com/xolox/vim-misc'

" startup
Plug 'mhinz/vim-startify'

" ------------ LANGUAGE SUPPORT ---------------
" Rust
Plug 'rust-lang/rust.vim'
" Go
Plug 'fatih/vim-go', { 'tag': '*' }
" Python
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'

" Json
Plug 'https://github.com/elzr/vim-json'

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" ----------- theme ------------
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/rakr/vim-one'
Plug 'sainnhe/edge'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'https://github.com/mhinz/vim-janah'
call plug#end()

set encoding=UTF-8
set t_Co=256
set termguicolors
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set mouse=a

set wrap
set linebreak
set showbreak=....

filetype plugin indent on
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=2
set cindent
set smarttab

set hlsearch
set incsearch
set ignorecase
set smartcase

"set timeoutlen=1000
"set ttimeoutlen=0

"set synmaxcol=128
"syntax sync minlines=256
"set lazyredraw
"set cursorline!
"set splitright

set wildmenu
set wildmode=list:longest,full

filetype plugin on
" -------- motion setting ----------
" let g:comfortable_motion_friction = 200.0
" let g:comfortable_motion_air_drag = 0.0

" ---------- custom theme plugin --------
" let g:one_allow_italics = 1
" let g:edge_style = 'neon'
" let g:edge_disable_italic_comment = 1

syntax on
set background=dark
colorscheme palenight 

" nnoremap <silent> gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <silent> gd :YcmCompleter GoToDefinition<CR>
" nnoremap <silent> gi :YcmCompleter GoToImplementation<CR>
" nnoremap <silent> gr :YcmCompleter GoToReferences<CR>

nnoremap <silent> gbm :<C-u>call gitblame#echo()<CR>

" --------- ycm setting ----------
" let g:ycm_add_preview_to_completeopt = 0
" set completeopt-=preview
" let g:ycm_auto_trigger = 1 

" ---------- airline setting ------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='palenight'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_highlighting_cache = 1
let g:airline#extensions#whitespace#enabled = 0

" ------------ nerdtree setting -------------
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <space>t :NERDTreeToggle <CR>
" automatically close when windows is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIgnore = ['^node_modules$','^vendor$']
" ---------- indent setting -----------
"let g:indentLine_char = '│'
"let g:indentLine_color_term = 255

" --------- Rust setting ----------
let g:rustfmt_autosave = 1

" --------- Go setting ------------
let g:go_fmt_command = "goimports"

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_def_mapping_enabled = 1 

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_function_parameters = 1
let g:go_doc_keywordprg_enabled = 0

" --------- Python setting -------------
let g:pymode_rope = 0
let g:deoplete#sources#jedi#show_docstring=1

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

" ------------- Note -------------
nnoremap <silent> <space>N :call ViewNote()<CR>
:function! ViewNote() 
  execute ":vsp"
  execute ":vertical resize 60"
  execute ":Note"
:endfunction

" -------------- Jedi configuration -------------"
let g:jedi#documentation_command = ""
let g:jedi#goto_command = "gd"
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures = 2
let g:jedi#popup_on_dot = 0
set completeopt=menuone,longest

" ---------------Coc.nvim configuration -----------------"
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=1
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=800
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
inoremap <silent><expr> <c-space> coc#refresh()
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" --------- Custom binding -----------
map <space>q :noh <CR>
map qq :q <CR>
map fs :w <CR>
nnoremap <space>w <C-w>
map <space>v :vsp <CR>
map <space>h :sp <CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>/ :Ag<Space>
nmap <Leader>/ :Rg<Space>

nnoremap J 10j
nnoremap K 10k

" force yourself to stop using the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" ----------- Custom function ------------
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

" --------- startify config -----------
let s:header = [
      \ '',
      \ '                       __         _    _        _    _      _         _      ',
      \ '                      / /    ___ | |_ ( ) ___  | |_ | |__  (_) _ __  | | __  ',
      \ '                     / /    / _ \| __||/ / __| | __|| |_ \ | || |_ \ | |/ /  ',
      \ '                    / /___ |  __/| |_    \__ \ | |_ | | | || || | | ||   <   ',
      \ '                    \____/  \___| \__|   |___/  \__||_| |_||_||_| |_||_|\_\  ',
      \ '                                       [ Do your best ]                      ',
      \ '                                                                             ',
      \ '',
      \ ]

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = s:center(s:header)
