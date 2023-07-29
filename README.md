# Installation
```console
sudo apt update
sudo apt upgrade
https://ppa.launchpadcontent.net/git-core/ppa/ubuntu
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:git-core/ppa
sudo apt install neovim
sudo apt install git
sudo apt install tmux
sudo apt install gnome-tweaks
```

## configs
```console
$ ln -s nvim/ ~/.config/nvim/
$ ln -s tmux/tmux.conf ~/.tmux.conf
```

## escape key
```console
$ gnome-tweaks
```

1. Keyboard & Mouse -> Additional Layout Options
2. Caps Lock Behavior -> Make Caps Lock an Additional Escape

## nvim plugin install -> vim-plug
```console
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## install neovim plugins
```console

$ nvim

(app loads)

:PlugInstall
```

