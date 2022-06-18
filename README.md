# DotFiles

some of these settings were inspired by [cornerman](https://github.com/cornerman/dotfiles/blob/master/zshrc)

I suggest setting up the confirgutations in this order
* `alacritty`
* `oh-my-zsh`
* `tmux`
* `vim`

-----

## Install alacritty
install alacrity on MacOS with 
```bash
brew install --cask alacritty
```
setup envionrment
```bash
mkdir -p ${HOME}/.config/alacritty
ln -s ${HOME}/dotfiles/alacritty.yml ${HOME/.config/alacritty/alacritty.yml}
```

## Install oh-my-zsh
see the [ohmyz.sh](https://ohmyz.sh) for installion instructions

Here is the command using `wget`
```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

Once `oh-my-zsh` is installed, you can setup your custom environment 
```bash
ln -s ${HOME}/dotfiles/.zshrc ${HOME}/.zshrc
```

## Install tmux
make sure tmux is installed:
```bash
brew install tmux
```
setup environment
```bash
ln -s ${HOME}/dotfiles/.tmux.conf ${HOME}/.tmux.conf
```

## Install vim
Make sure vim is installed
```
brew install vim
```

... more setup on vim is required plug ...

setup environment
```bash
ln -s ${HOME}/dotfiles/.vimrc ${HOME}/.vimrc
ln -s ${HOME}/dotfiles/.vim ${HOME}/.vim
```

