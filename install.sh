echo "Copying scripts to ~/.GoodScripts directory"
rm -rf ~/.GoodScripts
cp -rf ../GoodScripts/ ~/.GoodScripts

echo "Making all scripts executable (chmod 755)"
chmod -R 755 ~/.GoodScripts

echo "Copying .custom profile and sourcing"
cp -f .custom_profile ~/.custom_profile
source ~/.custom_profile

echo "Overwriting vim options"
cp -f .vimrc ~/.vimrc

echo "Add \`git lg\` alias"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

