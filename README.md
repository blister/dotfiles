# Installation
```console
sudo apt update
sudo apt upgrade
https://ppa.launchpadcontent.net/git-core/ppa/ubuntu
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:git-core/ppa
sudo apt install neovim
sudo apt install git
sudo apt install tmux
sudo apt install gnome-tweaks
sudo apt-get install ripgrep 
```

## configs
```console
$ ln -s nvim/ ~/.config/nvim/
$ ln -s tmux/tmux.conf ~/.tmux.conf
```

# tmux improvements
```console
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## escape key
```console
$ gnome-tweaks
```

1. Keyboard & Mouse -> Additional Layout Options
2. Caps Lock Behavior -> Make Caps Lock an Additional Escape

