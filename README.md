# dotfiles

## repository initialization

```bash
git init --bare ~/.dotfiles
```

## alias

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
## repository reproduction
```bash
git clone --bare git@github.com:yourusername/dotfiles.git $HOME/.dotfiles
git checkout

# disable untracted files
dotfiles config --local status.showUntrackedFiles no
```
