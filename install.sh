echo "Making directory for scripts"
mkdir -p ~/.scripts

echo "Copying scripts to ~/.scripts directory"
cp -rf . ~/.scripts

echo "Making all scripts executable (chmod 755)"
chmod -R 755 ~/.scripts

read -p "Pressing enter will overwrite your .profile file. Are you sure?"
echo "Overwriting and sourcing .profile"

AdamsMBP='Adams-MBP.attlocal.net'
if [[ `hostname` == $AdamsMBP ]]; then
	echo "Macbook detected - Adding line to .zshrc"
	alias_line=`source ~/.scripts/$AdamsMBP/alias.sh`
	grep -qxF $alias_line ~/.zshrc || echo $alias_line >> ~/.zshrc
	source ~/.zshrc
else
	cp .profile ~/.bash_profile
	source ~/.profile
fi
