alias reload!='. ~/.zshrc'

alias cl='clear' # Good 'ol Clear Screen command
alias cls='cl' # Good 'ol Clear Screen command
alias la='ls -la'

# Windows paths
alias home='cd ~'
alias sites='cd ~/Sites'
alias dotfiles='cd ~/.dotfiles'

alias upgrade-packages='sudo apt upgrade'

# # Colors
Color_Off='\033[0m'       # Text Reset
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Cyan='\033[0;36m'         # Cyan
Red='\033[0;31m'         # Red

af() {
	AF_SOURCE=/etc/resolv.conf-af
	TARGET=/etc/resolv.conf

	echo -e "${Cyan}Replacing resolv.conf to be able to access AF's internal network${Color_Off}"
	if sudo rm ${TARGET} && sudo cp ${AF_SOURCE} ${TARGET} ; then 
		echo -e "${Green}You are now using AF's internal network${Color_Off}"
	else 
		echo -e "${Red}Replacing resolv.conf files failed!${Color_Off}"
	fi
}

global() {
	GLOBAL_SOURCE=/etc/resolv.conf-global
	TARGET=/etc/resolv.conf

	echo -e "${Cyan}Replacing resolv.conf to be able to access the global network${Color_Off}"
	if sudo rm ${TARGET} && sudo cp ${GLOBAL_SOURCE} ${TARGET} ; then 
		echo -e "${Green}You are now using the global network${Color_Off}"
	else 
		echo -e "${Red}Replacing resolv.conf files failed!${Color_Off}"
	fi
}

ssh-create-key() {
	ssh-keygen -t rsa -b 4096 -C "$1"
}

ssh-copy-key() {
	echo -e "${Cyan}Copying contents of id_rsa-${1}.pub to clipboard...${Color_Off}"
	cat ~/.ssh/id_rsa-"$1".pub | clip.exe
	echo -e "${Green}Contents copied to clipboard!${Color_Off}"
}

set-env() {
	SOURCE=~/Sites/bramiljovalfiler/hosts-"$1"-egna_tillagg.txt
	TARGET=/mnt/c/Windows/System32/drivers/etc/hosts

	echo -e "${Cyan}Replacing hosts file...${Color_Off}"

	if rm $TARGET && cp $SOURCE $TARGET && source $TARGET 2> /dev/null ; then
		echo -e "${Green}You are now running the ${Yellow}${1}${Green} hosts file${Color_Off}"
	else
		echo -e "${Red}Replacing hosts file failed!${Color_Off}"
	fi
}
