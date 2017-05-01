FROM golang:onbuild

RUN apt-get update && apt-get install -y xz-utils libxrender1 libfontconfig1 libxext6

RUN tar -xf "wkhtmltox-0.12.4_linux-generic-amd64.tar.xz"
RUN ln --symbolic $PWD/wkhtmltox/bin/wkhtmltopdf /usr/bin/wkhtmltopdf

EXPOSE 8080