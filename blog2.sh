#! / Bin / bash

if [ "$1" == "--help" ]
then 
while read line; do echo $line; done < help.txt
fi 
if [ "$1" == "--debug" ]
then 
echo "idee avec -n -x "
fi 

create() {
    #regarder si les fichier existe 
    if ! [[ -e "js" ]];
    then 
        mkdir js
    fi
    if ! [[ -e "css" ]];
    then 
            mkdir css
    fi

#création du dossier du site 
website="blog"
mkdir $website
cd $website
#creation du fichier page 
touch index.html
echo " 
<!DOCTYPE html>
<html>
  <head>
    <title>New Page</title>
  </head>
  <body>
    <h1>Hello, World!</h1>" >>index.html
#faire une boucle pour ajout image 
for img in "../image"/*
do 
echo "<img src='../images/$img'>">>index.html
done
#fin de la page 
echo "  </body> </html>">>index.html

}
create
#x-www-browser blog/index.html
