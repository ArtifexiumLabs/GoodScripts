if [[ `hostname` == 'AdamPC' ]]; then
	vim ~/.bash_profile
elif [[ `hostname` == 'adam-ubuntu' ]]; then
	vim ~/.profile
else
	echo "Default bash profile unknown"
fi
