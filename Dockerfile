FROM nginx
RUN apt-get update && apt-get install -y procps
WORKDIR /usr/share/nginx/html
COPY web/snake.html /usr/share/nginx/html
CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ snake.html > snake.html ; nginx -g 'daemon off;'
