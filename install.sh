sudo apt update
sudo apt install -y pip
$HOME/dotfiles/ansible/bin/dot-bootstrap

ln -s $HOME/dotfiles/.config/nvim $HOME/.config/nvim
