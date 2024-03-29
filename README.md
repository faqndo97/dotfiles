# Welcome

In this repository I'm saving my own configuration files. Please fell free to recommend me each interesting configuration that you have with a Pull Request or an Issue. If you want you can use my configurations too.

## Commands

I use sym links to associate my dotfiles to the correct folders on my machine. Thesea are the ones that I'm using now:

**Link nvim**
```bash
ln -s ${PWD}/nvim ~/.config/nvim
```

To run this command first you need to have installed [nvim](https://github.com/neovim/neovim/wiki/Installing-Neovim) and [vim-plug](https://github.com/junegunn/vim-plug#neovim).
Then you are able to execute this sym link and run `nvim` and it will automatically start to install everything.

**Link zshrc**
```bash
ln -s ${PWD}/.zshrc ~/.zshrc
```

**Link tmux**
```
ln -s ${PWD}/.tmux.conf ~/.tmux.conf
```

**Install fzf key bindings**
```
$(brew --prefix)/opt/fzf/install
```

## Homebrew

To install homebrew dependencies you need to use [homebrew bundle](https://github.com/Homebrew/homebrew-bundle):

```bash
brew tap Homebrew/bundle
```

and then execute this to install the dependencies:

```bash
brew bundle
```
NOTE: To have nvim up and running correctly you need to have install node and nerd fonts
