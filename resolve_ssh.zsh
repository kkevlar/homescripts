set -e

echo $1
echo $2
echo $3

avahi-resolve -4 -n $2.local | grep "192.168." | sed -r "s/(.*)192\.168\.([0-9]+)\.([0-9]+)\s*/ssh -t $1@192.168.\2.\3 \"$3\"/" | grep ssh > oof
echo "\n GOOD"
source oof
rm -f oof

