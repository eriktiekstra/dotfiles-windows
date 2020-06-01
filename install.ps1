## Bash
New-Item -Path $HOME\.bashrc -ItemType SymbolicLink -Value $HOME\.dotfiles\bash\.bashrc

## SSH
New-Item -Path $HOME\.ssh -ItemType SymbolicLink -Value $HOME\.dotfiles\ssh

## Git
New-Item -Path $HOME\.gitconfig -ItemType SymbolicLink -Value $HOME\.dotfiles\git\gitconfig
New-Item -Path $HOME\.gitconfig.local -ItemType SymbolicLink -Value $HOME\.dotfiles\git\gitconfig.local
New-Item -Path $HOME\.gitignore.global -ItemType SymbolicLink -Value $HOME\.dotfiles\git\gitignore.global

## Nvm
New-Item -Path $HOME\.nvmrc -ItemType SymbolicLink -Value $HOME\.dotfiles\nvm\nvmrc

