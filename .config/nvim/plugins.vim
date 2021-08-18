" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" directory
"Plug 'preservim/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kyazdani42/nvim-tree.lua'

" view & search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vista.vim'

" airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" buffer
Plug 'akinsho/nvim-bufferline.lua'

" dev icon
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)

" git
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

" undo
Plug 'https://github.com/mbbill/undotree'

" db
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui/'

" rest console
Plug 'diepm/vim-rest-console'
Plug 'https://github.com/xolox/vim-misc'

" startup
Plug 'mhinz/vim-startify'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['markdown', 'html'] }

Plug 'https://github.com/tyru/open-browser.vim'

"Plug 'puremourning/vimspector'

" ------------ LANGUAGE SUPPORT ---------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/nvim-compe'
"Plug 'glepnir/lspsaga.nvim'
"Plug 'onsails/lspkind-nvim'
"Plug 'kosayoda/nvim-lightbulb'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'

" CSS
Plug 'https://github.com/ap/vim-css-color'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Rust
"Plug 'rust-lang/rust.vim'

" Babel
"Plug 'jbgutierrez/vim-babel'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'https://github.com/ivandzf/vim-go-debugger'
Plug 'sebdah/vim-delve'

" Python
" Plug 'davidhalter/jedi-vim'
" Plug 'deoplete-plugins/deoplete-jedi'

" Json
"Plug 'https://github.com/elzr/vim-json'

"Plug 'sheerun/vim-polyglot'
" plantuml
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'
Plug 'https://github.com/weirongxu/plantuml-previewer.vim'

" proto
"Plug 'https://github.com/uarun/vim-protobuf'

" JS
"Plug 'https://github.com/pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'maxmellon/vim-jsx-pretty'

" reason
"Plug 'reasonml-editor/vim-reason-plus'
"Plug 'amiralies/vim-rescript'

" toml
"Plug 'cespare/vim-toml'

" VueJS
"Plug 'posva/vim-vue'
"Plug 'leafoftree/vim-vue-plugin'

" html
Plug 'mattn/emmet-vim'

" indent
Plug 'lukas-reineke/indent-blankline.nvim'

" ----------- theme ------------
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'https://github.com/rakr/vim-one'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'
Plug 'danilo-augusto/vim-afterglow'
Plug 'NLKNguyen/papercolor-theme'
Plug 'w0ng/vim-hybrid'
Plug 'projekt0n/github-nvim-theme'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'kyoz/purify', { 'rtp': 'vim' }
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'https://github.com/mhinz/vim-janah'
"Plug 'arcticicestudio/nord-vim'
"Plug 'connorholyday/vim-snazzy'
"Plug 'https://github.com/mhartington/oceanic-next'
"Plug 'https://github.com/jsit/toast.vim'
"Plug 'savq/melange'
call plug#end()

