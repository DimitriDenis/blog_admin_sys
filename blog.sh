#! / Bin / bash


#savoir si on internet 


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




cat > index.html << EOF

<!DOCTYPE html>
<html>
  <head>
    <title>New Page</title>
  </head>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>

EOF

# touch css/style.css

x-www-browser index.html
