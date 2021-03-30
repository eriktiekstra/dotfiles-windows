echo "🤞 Installing and configuring .dotfiles..."
. $(pwd)/install/init.sh
. $(pwd)/install/pull-latest.sh
. $(pwd)/install/set-zsh-as-default.sh
. $(pwd)/install/install-oh-my-zsh.sh
. $(pwd)/install/install-nvm.sh
. $(pwd)/install/configure-git.sh
. $(pwd)/install/configure-ssh.sh


ln -sf $(pwd) ~/.dotfiles
echo "🎉🍻 .dotfiles installed and ready to use"
