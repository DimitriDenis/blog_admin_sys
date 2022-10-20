#! / Bin / bash

#savoir si on internet 


if [ "$1" == "--help" ]
then 
while read line; do echo $line; done < help.txt
fi 





xdg-open "www.google.com"
