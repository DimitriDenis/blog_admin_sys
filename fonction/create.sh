#! / Bin / bash

#! / Bin / bash

function {
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
