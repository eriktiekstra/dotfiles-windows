alias reload!='. ~/.zshrc'

alias cl='clear' # Good 'ol Clear Screen command
alias cls='cl' # Good 'ol Clear Screen command

# Windows paths
alias home='cd /mnt/c/Users/tieer'
alias sites='cd /mnt/c/Users/tieer/Sites/'
alias dotfiles='cd /mnt/c/Users/tieer/.dotfiles'

ssh-create-key() {
	ssh-keygen -t rsa -b 4096 -C "$1"
}

set-env() {
	SOURCE=~/sites/bramiljovalfiler/hosts-"$1"-egna_tillagg.txt
	TARGET=/c/Windows/System32/drivers/etc/hosts

	echo -e "${Cyan}Replacing hosts file...${Color_Off}"
	rm $TARGET
	cp $SOURCE $TARGET
	source $TARGET 2> /dev/null
	echo -e "${Green}You are now running the ${Yellow}${1}${Green} hosts file${Color_Off}"
}