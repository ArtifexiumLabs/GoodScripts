echo "Making directory for scripts"
mkdir -p ~/.scripts

echo "Copying scripts to ~/.scripts directory"
cp -rf . ~/.scripts

echo "Making all scripts executable (chmod 755)"
chmod -R 755 ~/.scripts

read -p "Pressing enter will overwrite your .profile file. Are you sure?"
echo "Overwriting and sourcing .profile"
if [[ `hostname` == 'Adams-MBP.attlocal.net' ]]; then
	echo "Macbook detected - Adding line to .zshrc"
	grep -qxF 'source ~/.scripts/alias.sh' .zshrc || echo 'source ~/.profile' >> .zshrc
	source ~/.zshrc
else
	cp .profile ~/.bash_profile
	source ~/.profile
fi
