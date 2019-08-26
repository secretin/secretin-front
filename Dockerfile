FROM httpd

ENV SECRETIN_API_URL=http://127.0.0.1:3000

RUN apt-get update
RUN apt-get install unzip -y

RUN mkdir /secretin-front
WORKDIR /secretin-front
ADD https://github.com/secretin/secretin-app/archive/gh-pages.zip /secretin-front/
RUN unzip gh-pages.zip

WORKDIR /
ADD start.sh /
RUN chmod +x /start.sh
CMD /start.sh