if [[ `hostname` == 'AdamPC' ]]; then
	source ~/.bash_profile
elif [[ `hostname` == 'adam-ubuntu' ]]; then
	source ~/.profile
else
	echo "Unknown default profile"
fi
