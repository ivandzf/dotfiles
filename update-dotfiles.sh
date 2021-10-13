rm -rf p10k/*
rm -rf tmux/*
rm -rf zsh/*
rm -rf .config/nvim/*

cp ~/.p10k.zsh p10k/.p10k.zsh
cp ~/.zshrc zsh/.zshrc
cp ~/.tmux.conf tmux/.tmux.conf
cp -r ~/.config/nvim/ .config/nvim

echo "Updated!!!"
