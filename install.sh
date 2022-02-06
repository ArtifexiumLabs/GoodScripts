echo "Making directory for scripts"
mkdir -p ~/.scripts
read -p "Pressing enter will overwrite your .profile file. Are you sure?"
cp .profile ~/.bash_profile
echo "Copying scripts to ~/.scripts directory"
cp -rf . ~/.scripts
echo "Making all scripts executable (chmod 755)"
chmod -R 755 ~/.scripts
echo "Sourcing profile"
source ~/.profile