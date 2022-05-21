local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " ..
                install_path)
    execute "packadd packer.nvim"
end

-- Auto source when there are changes in plugins.lua
vim.cmd [[autocmd BufWritePost plugins.lua luafile %]]

return require("packer").startup(function(use)
    -- Packer can manage itself as an optional plugin
    use "wbthomason/packer.nvim"

	-- cache
	use "lewis6991/impatient.nvim"

    -- Dashboard
    use "mhinz/vim-startify"

	-- auto filetype
	use "nathom/filetype.nvim"

    -- Indent
    use "lukas-reineke/indent-blankline.nvim"

    -- ColorScheme
    use {"projekt0n/github-nvim-theme"}
    use {"sainnhe/sonokai"}
    use "navarasu/onedark.nvim"
	use "sainnhe/edge"
	use "rafamadriz/neon"
    --use "monsonjeremy/onedark.nvim"
    --use "rmehri01/onenord.nvim"
    -- use {"sonph/onehalf", rtp = "vim"}
	use "mhartington/oceanic-next"
	use "yonlu/omni.vim"
	use "fenetikm/falcon"
	use {"lourenci/github-colors", branch = "main"}
	use "rebelot/kanagawa.nvim"
	use "tiagovla/tokyodark.nvim"
	use "olimorris/onedarkpro.nvim"

	-- icon
	use "kyazdani42/nvim-web-devicons"

    -- Tree
    use "kyazdani42/nvim-tree.lua"
    use "mbbill/undotree"
	--use "preservim/nerdtree"
	--use "Xuyuanp/nerdtree-git-plugin"
	--use "tiagofumo/vim-nerdtree-syntax-highlight"
	--use "ryanoasis/vim-devicons"

    -- Git
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use "tpope/vim-fugitive"

    -- Search
    use {"junegunn/fzf", dir = "~/.fzf", run = "./install --all"}
    use {"junegunn/fzf.vim"}

    use "simrat39/symbols-outline.nvim"

    -- Buffer
    use {"akinsho/nvim-bufferline.lua", tag = "v1.2.0"}

    -- Formatter
    use "sbdchd/neoformat"

    -- Airline
    --use {"glepnir/galaxyline.nvim", branch = "main"}
    use "NTBBloodbath/galaxyline.nvim"

    -- Debugger
    --  use "puremourning/vimspector"
    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "theHamsta/nvim-dap-virtual-text"
    use "leoluz/nvim-dap-go"

    -- LSP
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "nvim-treesitter/nvim-treesitter-refactor"
	use "romgrk/nvim-treesitter-context"
	use "p00f/nvim-ts-rainbow"
	use "SmiteshP/nvim-gps"
	use "lewis6991/spellsitter.nvim"
    --  use {"neoclide/coc.nvim", branch = "release"} use native lsp instead
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp
    use "hrsh7th/cmp-buffer"
    use "onsails/lspkind-nvim"
    --use "glepnir/lspsaga.nvim"
    use "tami5/lspsaga.nvim"
	use "ray-x/lsp_signature.nvim"
    -- use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}

    -- snippet
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"
	use "hrsh7th/vim-vsnip-integ"

    -- Pairs
    use "jiangmiao/auto-pairs"
    use "windwp/nvim-ts-autotag"

    -- Markdown
    use {"iamcco/markdown-preview.nvim", run = "cd app && yarn install"}

    -- CSV
    use "mechatroner/rainbow_csv"

    -- Language support
    use {"fatih/vim-go", run = ":GoUpdateBinaries"}
    use "folke/lua-dev.nvim"
    use "mattn/emmet-vim"
	use "simrat39/rust-tools.nvim"

    -- Plantuml
    use "scrooloose/vim-slumlord"
    use "aklt/plantuml-syntax"
    use "weirongxu/plantuml-previewer.vim"

    use "github/copilot.vim"
	use "akinsho/toggleterm.nvim"
	use "norcalli/nvim-colorizer.lua"
end)
