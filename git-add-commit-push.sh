git add .
if [[ -z $1 ]]; then
	git commit
else
	git commit -m $1
fi
git commit -m $1
git push
