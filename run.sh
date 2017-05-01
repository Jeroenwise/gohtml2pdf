docker rm -f gohtml2pdf

docker build --tag gohtml2pdf .

docker run --detach --volume $(pwd)/files:/go/src/app/files --publish 8080:8080 --name=gohtml2pdf gohtml2pdf