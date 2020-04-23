# dotfiles-win
My Zsh on Ubuntu on Windows configuration files.

> Windows 10 can now officially run native Ubuntu subsystem. Its default settings comes with Bash, but it's possible to install different shells (my settings are using Zsh). If you need to learn how to install Ubuntu on Windows, take a look at this [Microsoft Guide](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide).

## Dependencies needed before running this script

- Windows 10 with WSL activated and Ubuntu installed.
- Hyper (Terminal Emulator)
- 

## Usage
Just run `install.sh` to install the development environment and symlink all dotfiles.

```
$ git clone https://github.com/eriktiekstra/dotfiles-win.git ~/.dotfiles
$ sudo ~/.dotfiles/install.sh
```

To keep up to date, you can just run `git pull` this repo, and re-run `install.sh`.
