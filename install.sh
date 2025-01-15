sudo apt update
sudo apt install -y pip stow fd-find

sudo ln -s $(which fdfind) /usr/local/bin/fd

rm -rf $HOME/.config
cd $HOME/dotfiles
stow -v --ignore='ansible' --ignore='\.profile' --ignore='\.bash_aliases' .

$HOME/dotfiles/ansible/bin/dot-bootstrap
