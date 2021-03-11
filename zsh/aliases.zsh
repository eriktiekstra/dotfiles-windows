alias reload!='. ~/.zshrc'

alias cl='clear' # Good 'ol Clear Screen command
alias cls='cl' # Good 'ol Clear Screen command
alias la='ls -la'

# Windows paths
alias home='cd ~'
alias sites='cd ~/Sites'
alias dotfiles='cd ~/.dotfiles'

af() {
	AF_SOURCE=/etc/resolv.conf-af
	TARGET=/etc/resolv.conf

	sudo rm ${TARGET}
	sudo cp ${AF_SOURCE} ${TARGET}
}

global() {
	GLOBAL_SOURCE=/etc/resolv.conf-global
	TARGET=/etc/resolv.conf

	sudo rm ${TARGET}
	sudo cp ${GLOBAL_SOURCE} ${TARGET}
}

ssh-create-key() {
	ssh-keygen -t rsa -b 4096 -C "$1"
}

set-env() {
	SOURCE=~/Sites/bramiljovalfiler/hosts-"$1"-egna_tillagg.txt
	TARGET=/mnt/c/Windows/System32/drivers/etc/hosts

	echo -e "${Cyan}Replacing hosts file...${Color_Off}"
	rm $TARGET
	cp $SOURCE $TARGET
	source $TARGET 2> /dev/null
	echo -e "${Green}You are now running the ${Yellow}${1}${Green} hosts file${Color_Off}"
}
