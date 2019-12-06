echo "Convert markdown to html"
echo "USAGE: ./md2html index"
echo "The above command reads index.md and produces index.html"
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
  else
    pandoc --css pandoc.css -s -o $1.html $1.md
    echo "$1.html is ready!"
fi
