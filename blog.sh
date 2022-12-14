#! / Bin / bash


create_index_html() {
    #regarder si les fichier existe 
    if ! [[ -e "js" ]];
    then 
        mkdir js
        cd js 
        touch fichier.js
        cd ..
    fi
    if ! [[ -e "css" ]];
    then 
        mkdir css
        cd css
        touch fichier.css
        cd ..
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
        <h1>bienvenue sur mon blog </h1>" >>index.html
    #faire une boucle pour ajout image 
    if [[ -s "../image" ]];
    then
        #boucle pour afficher image
        for img in "../image"/*
        do 
        echo "<img src='../images/$img'>">>index.html
        done
    else
        echo " il n'y a pas d'image dans le dossier image "
    fi
    #fin de la page 
    echo "  </body> </html>">>index.html

}
if [ "$#" -ne 1 ]; then
 echo "Le nombre d'arguments est invalide"

elif [ "$1" == "--help" ]
    then 
    while read line; do echo $line; done < help.txt
elif [ "$1" == "--debug" ]
    then 
    echo "idee avec -n -x "
elif [ "$1" == "start" ]
    then 
    if ! [[ -e "blog" ]];
        then 
            create_index_html
            echo "bien crée"
    else
    echo "votre blog a déja etait crée veulliez."
    echo "faite la commande suivante pour le mettre a jour:"
    echo " bash blog.sh update"
    fi
elif [ "$1" == "update" ]
    then 
    if [[ -e "blog" ]];
        then 
            rm -r blog 
            rm -r js
            rm -r css
            create_index_html
            echo "bien crée"
    else
    echo "vous navez pas crée de blog ou vous l'avez deja suprimmer"
    echo "vous ne pouvez pas utilisé cette commande "
    fi
elif [ "$1" == "delete" ]
    then 
    if [[ -e "blog" ]];
        then 
            rm -r blog 
            rm -r js
            rm -r css
            create_index_html
            echo "bien crée"
    else
    echo "vous navez pas crée de blog ou vous l'avez deja suprimmer"
    echo "vous ne pouvez pas utilisé cette commande "
    fi
else
echo "commande inconnue "
fi   



#x-www-browser localhost:8081
