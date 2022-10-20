#! / Bin / bash

#savoir si on internet 


if [ "$1" == "--help" ]
then 
while read line; do echo $line; done < help.txt
fi 

touch -a < test.html

cat > test.html << EOF

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



xdg-open "www.google.com"
