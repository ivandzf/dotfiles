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

    -- Dashboard
    use "mhinz/vim-startify"

    -- Indent
    use "lukas-reineke/indent-blankline.nvim"

    -- ColorScheme
    -- use {"projekt0n/github-nvim-theme"}
    -- use {"sainnhe/sonokai"}
    use "navarasu/onedark.nvim"
	use "sainnhe/edge"
    --use "monsonjeremy/onedark.nvim"
    --use "rmehri01/onenord.nvim"
    -- use {"sonph/onehalf", rtp = "vim"}
	--use "mhartington/oceanic-next"

	-- icon
	use "kyazdani42/nvim-web-devicons"

    -- Tree
    use "kyazdani42/nvim-tree.lua"
    use "https://github.com/mbbill/undotree"
	use "preservim/nerdtree"
	use "Xuyuanp/nerdtree-git-plugin"
	use "tiagofumo/vim-nerdtree-syntax-highlight"
	use "ryanoasis/vim-devicons"

    -- Git
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use "tpope/vim-fugitive"
    use "kdheepak/lazygit.nvim"

    -- Search
    use {"junegunn/fzf", dir = "~/.fzf", run = "./install --all"}
    use {"junegunn/fzf.vim"}

    use "simrat39/symbols-outline.nvim"

    -- Buffer
    use "akinsho/nvim-bufferline.lua"

    -- Formatter
    use "sbdchd/neoformat"

    -- Airline
    use {"glepnir/galaxyline.nvim", branch = "main"}

    -- Debugger
    --  use "puremourning/vimspector"
    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "theHamsta/nvim-dap-virtual-text"
    use "leoluz/nvim-dap-go"

	use "brymer-meneses/grammar-guard.nvim"

    -- LSP
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "nvim-treesitter/nvim-treesitter-refactor"
    --  use {"neoclide/coc.nvim", branch = "release"} use native lsp instead
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp
    use "hrsh7th/cmp-buffer"
    use "onsails/lspkind-nvim"
    --use "glepnir/lspsaga.nvim"
    use "tami5/lspsaga.nvim"
    -- use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}

    -- snippet
    -- use "saadparwaiz1/cmp_luasnip" -- Snippets source for nvim-cmp
    -- use "L3MON4D3/LuaSnip" -- Snippets plugin
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"

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

    -- Plantuml
    use "scrooloose/vim-slumlord"
    use "aklt/plantuml-syntax"
    use "weirongxu/plantuml-previewer.vim"

    use "github/copilot.vim"
	use "akinsho/toggleterm.nvim"
	use "norcalli/nvim-colorizer.lua"
end)
