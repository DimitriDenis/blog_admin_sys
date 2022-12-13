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

create() {
website="blog"

mkdir $website
cd $website
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
}
create
# touch css/style.css

#x-www-browser blog/index.html
