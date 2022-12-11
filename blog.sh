#! / Bin / bash



if [ "$1" == "--help" ]
then 
while read line; do echo $line; done < help.txt
fi 
if [ "$1" == "--debug" ]
then 
echo "idee avec -n -x "
fi 

website="blog"

mkdir $website
cd $website

# mkdir js
# mkdir css 



/bin/bash fonction/create2.sh

# touch css/style.css

x-www-browser blog/index.html
