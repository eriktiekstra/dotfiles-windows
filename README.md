# Dotfiles for Windows

My Zsh on Ubuntu on Windows configuration files.

> Windows 10 can now officially run native Ubuntu subsystem. Its default settings comes with Bash, but it's possible to install different shells (my settings are using Zsh). If you need to learn how to install Ubuntu on Windows, take a look at this [Microsoft Guide](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide).

## How does it work?

Different configuration files are located in this repository. Running `install.sh` will make sure most files will be symlinked into the users home folder inside WSL. Also some other dependencies will be updated/added, such as `zsh`, `oh-my-zsh`, `git`, `git-flow-avh`, `nvm`.

### Dependencies needed before running this script

- Windows 10 with WSL activated and Ubuntu installed
- [Git for Windows](https://gitforwindows.org/)
- [Hyper](https://hyper.is/) (Terminal Emulator)
- [VS Code](https://code.visualstudio.com/)

### Installation

Just run `install.sh` to install the development environment and symlink all dotfiles. Type your password if asked for it.

```
$ git clone https://github.com/eriktiekstra/dotfiles-windows.git ~/.dotfiles
$ sudo sh ~/.dotfiles/install.sh
```

### Post installation

- Copy the contents of [hyper.js](./hyper/hyper.js) into the `.hyper.js` file in the installation folder. This folder is located under `~/Appdata/Roaming/Hyper`.
- Restart Hyper

#### VS Code configuration

Configuration for VS Code is loaded from a GitHub Gist using the Settings Sync extension.

#### SSH configuration

To activate SSH usage, SSH keys needs to be created and configured. There is an alias (`ssh-create-key`) which can be used. It currently accepts 1 parameter which is the email address. RSA is used by default.

### Keep it up to date

When changes are made locally, make sure to push these changes to the remote repository. To get changes from remote, just run `git pull` this repo, and re-run `install.sh`.

## Other applications

- [Google Chrome](https://www.google.com/chrome/)
- [Brave Browser](https://brave.com/)
- [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
- [Slack](https://slack.com/intl/en-se/downloads)
- [Postman](https://www.postman.com/)
- [Toggl](https://toggl.com/toggl-desktop/)
- [Lastpass](https://lastpass.com/misc_download2.php)
- [Franz](https://meetfranz.com/)
- [Zeplin](https://zeplin.io/)
- [Keybase](https://keybase.io/)
- [Spotify](https://www.spotify.com/download)
