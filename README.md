# Dotfiles

Dotfiles managed by `stow`.

## Instructions

* Clone this repo into `$HOME` (it has to be there).
* Install `stow`:
  ```shell
  brew install stow
  ```
* From inside the `dotfiles` directory, run:
  ```shell
  stow .
  ```

Note that you need to `mv`/`rm` any existing files if they already exist, as
`stow` wants to replace them with symlinks.

## Adding new files

Just move the config file from `$HOME` into the `dotfiles` dircectory, then
re-run `stow .` to recreate is as a symlink.

Note that you need to mimic the file & direcotry structure in `dotfiles` that
exists in `$HOME`, e.g.:

* `~/.profile` becomes `~/dotfiles/.profile`
* `~/.config/nvim/` becomes `~/dotfiles/.config/nvim/`

## Installing brew package

You can install all the packages in `brew-packages.txt` (generated using `brew
leaves`) by using `xargs brew install < brew-packages.txt`
