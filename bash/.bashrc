## Aliases
if [[ -a ~/.dotfiles/bash/aliases.sh ]]
then
  source ~/.dotfiles/bash/aliases.sh
fi

ssh-create-key() {
	ssh-keygen -t rsa -b 4096 -C "$1"
}

set-env() {
	SOURCE=/c/Users/tieer/Sites/bramiljovalfiler/hosts-"$1"-egna_tillagg.txt
	TARGET=/c/Windows/System32/drivers/etc/hosts

	echo -e "${Cyan}Replacing hosts file...${Color_Off}"
	rm $TARGET
	cp $SOURCE $TARGET
	source $TARGET 2> /dev/null
	echo -e "${Green}You are now running the ${Yellow}${1}${Green} hosts file${Color_Off}"
}