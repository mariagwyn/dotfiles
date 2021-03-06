# mariagwyn does dotfiles
Based on [Zach Holman's](https://github.com/holman)' excellent
[dotfiles](https://github.com/holman/dotfiles) repo, modified for bash rather than ZSH, simplified, and tailored for me.

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Drupal" — you can simply add a `drupal` directory and put
files in there. Anything with an extension of `.sh` will get automatically
included into your shell (exceptions below under Components). Anything with an extension of `.symlink` will get symlinked without extension into `$HOME` when you run `script/bootstrap`.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.sh**: Any files ending in `.sh` get loaded into your
  environment.
- **topic/path.sh**: Any file named `path.sh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.sh**: Any file named `completion.sh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

Run this:

```sh
git clone git@github.com:mariagwyn/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `bash/bash_profile.symlink`,
which sets up a few paths that'll be different on your particular machine.

## Update

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.
