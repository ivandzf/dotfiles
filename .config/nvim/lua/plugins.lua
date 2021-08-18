local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
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
  use {"projekt0n/github-nvim-theme"}
  use {"sainnhe/sonokai"}

  -- Tree
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons"
  }
  use "https://github.com/mbbill/undotree"

  -- Git
  use "https://github.com/airblade/vim-gitgutter"
  use "tpope/vim-fugitive"
  use "kdheepak/lazygit.nvim"

  -- Search
  use {"junegunn/fzf", dir = "~/.fzf", run = "./install --all" }
  use {"junegunn/fzf.vim"}
  use "liuchengxu/vista.vim"

  -- Buffer
  use "akinsho/nvim-bufferline.lua"

  -- Airline
  use {"glepnir/galaxyline.nvim", branch = "main"}

  -- Language Support
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use {"neoclide/coc.nvim", branch = "release"}
  use {"fatih/vim-go", run = ":GoUpdateBinaries"}
  use "mattn/emmet-vim"

  -- Plantuml
  use "scrooloose/vim-slumlord"
  use "aklt/plantuml-syntax"
  use "weirongxu/plantuml-previewer.vim"

end)
