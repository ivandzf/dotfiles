" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc extensions
let g:coc_global_extensions = ['coc-yaml', 'coc-go', 'coc-rust-analyzer', 'coc-rls', 'coc-db', 'coc-tslint-plugin', 'coc-pyright', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-vimlsp']

"Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

" directory
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'scrooloose/nedcommenter'

"Plug 'rhysd/vim-clang-format'

" view & search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vista.vim'

" buffer tabs
" Plug 'https://github.com/ap/vim-buftabline'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" dev icon
Plug 'ryanoasis/vim-devicons'

" git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-signify'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

Plug 'https://github.com/mbbill/undotree'

" db
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui/'

" .env
"Plug 'https://github.com/tpope/vim-dotenv'

" Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" vim multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Code completion
" Plug 'https://github.com/ycm-core/YouCompleteMe'

" Indent
"Plug 'Yggdroot/indentLine'

" motion
"Plug 'yuttie/comfortable-motion.vim'
"Plug 'psliwka/vim-smoothie'

" rest console
Plug 'diepm/vim-rest-console'

" notes
"Plug 'https://github.com/xolox/vim-notes'
"Plug 'https://github.com/xolox/vim-misc'

" startup
Plug 'mhinz/vim-startify'

" CSS
Plug 'https://github.com/ap/vim-css-color'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['markdown', 'html'] }

Plug 'https://github.com/tyru/open-browser.vim'

Plug 'puremourning/vimspector'
let g:vimspector_install_gadgets = ['vscode-go', 'CodeLLDB']
let g:vimspector_enable_mappings = 'HUMAN'

" ------------ LANGUAGE SUPPORT ---------------
" Rust
"Plug 'rust-lang/rust.vim'

" Babel
Plug 'jbgutierrez/vim-babel'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'https://github.com/ivandzf/vim-go-debugger'
"Plug 'sebdah/vim-delve'

" Python
" Plug 'davidhalter/jedi-vim'
" Plug 'deoplete-plugins/deoplete-jedi'

" Json
Plug 'https://github.com/elzr/vim-json'

"Plug 'sheerun/vim-polyglot'
" plantuml
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'
Plug 'https://github.com/weirongxu/plantuml-previewer.vim'

" proto
Plug 'https://github.com/uarun/vim-protobuf'

" JS
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'

" reason
Plug 'reasonml-editor/vim-reason-plus'
"Plug 'amiralies/vim-rescript'

" toml
Plug 'cespare/vim-toml'

" VueJS
"Plug 'posva/vim-vue'
Plug 'leafoftree/vim-vue-plugin'

" html
Plug 'mattn/emmet-vim'

"Plug 'nvim-treesitter/nvim-treesitter', {'commit': '3c07232'}

" ----------- theme ------------
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/rakr/vim-one'
Plug 'sainnhe/edge'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'https://github.com/mhinz/vim-janah'
Plug 'arcticicestudio/nord-vim'
Plug 'connorholyday/vim-snazzy'
Plug 'https://github.com/mhartington/oceanic-next'
Plug 'https://github.com/jsit/toast.vim'
"Plug 'savq/melange'
call plug#end()

let mapleader = ";"
let g:mapleader = ";"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set encoding=UTF-8
set t_Co=256
set termguicolors
set backspace=indent,eol,start
set ruler
set number
set showcmd
set mouse=a

filetype plugin indent on
set autoindent
set expandtab
" set cindent
" set smarttab

set wrap
set linebreak
set showbreak=...

set hlsearch
set incsearch
set ignorecase
set smartcase

"set lazyredraw
set redrawtime=-1

set nobackup
set nowb
set noswapfile
set cmdheight=2

set shiftwidth=2
set tabstop=2
" set ai "Auto indent
" set si "Smart indent

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2

au BufReadPost,BufNewFile *.re set ft=reason
au! BufRead,BufNewFile *.proto setfiletype proto
au! BufRead,BufNewFile *.vue setfiletype vue

"set timeoutlen=1000
"set ttimeoutlen=0

"set synmaxcol=128
"syntax sync minlines=256
"set lazyredraw
"set cursorline!
"set splitright

set wildmenu
set wildmode=list:longest,full

" -------- motion setting ----------
"let g:comfortable_motion_friction = 200.0
"let g:comfortable_motion_air_drag = 0.0
"let g:comfortable_motion_scroll_down_key = "j"
"let g:comfortable_motion_scroll_up_key = "k"

" ---------- custom theme plugin --------
" let g:one_allow_italics = 1
let g:edge_style = 'aura'
" let g:edge_disable_italic_comment = 1

syntax on
set background=dark
colorscheme edge
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1

" nnoremap <silent> gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <silent> gd :YcmCompleter GoToDefinition<CR>
" nnoremap <silent> gi :YcmCompleter GoToImplementation<CR>
" nnoremap <silent> gr :YcmCompleter GoToReferences<CR>

" --------- git -----------
let g:gitgutter_realtime = 1
let g:gitgugger_eager = 1

nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gbm :Git blame<CR>

" --------- dadbod ----------
let g:db_ui_use_nerd_fonts = 1

" --------- ycm setting ----------
" let g:ycm_add_preview_to_completeopt = 0
" set completeopt-=preview
" let g:ycm_auto_trigger = 1

" ---------- airline setting ------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_theme='edge'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_highlighting_cache = 1
let g:airline#extensions#whitespace#enabled = 0

" ------------ nerdtree setting -------------
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['^node_modules$','^vendor$']

map <Leader>t :NERDTreeToggle <CR>
" automatically close when windows is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeAutoDeleteBuffer = 1

" --------- reasonml setting ------------
let g:LanguageClient_serverCommands = {
    \ 'reason': ['./usr/local/bin/reason-language-server']
    \ }

" ------- VUE setting ----------
let g:vim_vue_plugin_load_full_syntax = 1
autocmd FileType vue noremap <buffer> <c-f> :%!vue-formatter<CR>

" --------- Rust setting ----------
let g:rustfmt_autosave = 1

" --------- Go setting ------------
let g:go_gopls_enabled = 0
let g:go_def_mapping_enabled =  0

let g:go_fmt_fail_silently = 1
"let g:go_fmt_experimental = 1
let g:go_fmt_command = "goimports"

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_function_parameters = 1
let g:go_doc_keywordprg_enabled = 0
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'rightbelow 10new',
\ }

nnoremap <silent> <Leader>fs :GoFillStruct<CR>
nnoremap <silent> <Leader>er :GoIfErr<CR>

" --------- Python setting -------------
"let g:pymode_rope = 0
"let g:deoplete#sources#jedi#show_docstring=1

" -------------- Proto --------------
function! FormatProtoOnSave()
  execute "ClangFormat"
endfunction
"autocmd BufWritePre *.proto call FormatProtoOnSave()

" ------------ JS ------------
let g:javascript_plugin_flow = 1

" ------------ ALE setting ----------------
let b:ale_linters = {'javascript': ['eslint']}

" ------------- Buffer key binding ---------------
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <silent> <Leader>bp :bprevious<CR>
nnoremap <silent> <Leader>bd :bd<CR>
nnoremap <silent> <Leader>bg :call GotoNBuffer(getchar())<CR>
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

" ----------------- Lazy Git ------------ "
nnoremap <silent> <leader>lg :LazyGit<CR>
let g:lazygit_use_neovim_remote = 1 

" ---------------Coc.nvim configuration -----------------"
"nmap <silent> <Esc> :call coc#util#float_hide() <CR>
nmap <Esc> :call coc#float#close_all() <CR>
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
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
" ------------ Rest ------------
let g:vrc_trigger = '<C-t>'
map <leader>r :set ft=rest<CR>

" --------- Custom binding -----------
map <Leader>n :noh<CR>
map qq :q<CR>
map fs :w<CR>

map <Leader>y "+y
map <Leader>p "+p<Paste>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <Leader>v :vsp <CR>
map <Leader>vv :sp <CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>. :Ag<Space>
nmap <Leader>/ :Rg<Space>

map <C-u> :res +5<CR>
map <C-i> :vertical resize +10<CR>
map <C-o> :vertical resize -10<CR>
map <C-p> :res -5<CR>

nnoremap J 10j
nnoremap K 10k

nnoremap <leader>u :UndotreeToggle<cr>

" force yourself to stop using the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>

nmap <Leader>pt <Plug>(Prettier)

" ----------- Custom function ------------
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

" --------- startify config -----------
"function! s:center(lines) abort
"  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
"  let centered_lines = map(copy(a:lines),
"        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
"  return centered_lines
"endfunction
"
"let g:startify_custom_header = s:center(s:header)
"
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
" let s:opam_share_dir = system("opam config var share")
" let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')
" 
" let s:opam_configuration = {}
" 
" function! OpamConfOcpIndent()
"   execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
" endfunction
" let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')
" 
" function! OpamConfOcpIndex()
"   execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
" endfunction
" let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')
" 
" function! OpamConfMerlin()
"   let l:dir = s:opam_share_dir . "/merlin/vim"
"   execute "set rtp+=" . l:dir
" endfunction
" let s:opam_configuration['merlin'] = function('OpamConfMerlin')
" 
" let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
" let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
" let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
" for tool in s:opam_packages
"   " Respect package order (merlin should be after ocp-index)
"   if count(s:opam_available_tools, tool) > 0
"     call s:opam_configuration[tool]()
"   endif
" endfor
" ## end of OPAM user-setup addition for vim / base ## keep this liner

" ----------------- Vista ---------------
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

let g:vista_sidebar_position = "vertical topleft"
nmap <Leader>z :Vista!!<CR>
