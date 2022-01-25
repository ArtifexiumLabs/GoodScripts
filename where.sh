TEXT=$1
DIR=$2

if [[ -z $DIR ]]; then
    grep -Ril . $1
else
    grep -Ril $2 $1
fi
