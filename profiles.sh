if [[ `hostname` == 'AdamPC' ]]; then
	. ~/.bash_profile
elif [[ `hostname` == 'adam-ubuntu' ]]; then
	. ~/.profile
else
	echo "Unknown default profile"
fi
