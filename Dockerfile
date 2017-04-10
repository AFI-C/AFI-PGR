FROM nginx
ADD _site /usr/share/nginx/html
COPY nginx/default.conf /etc/nginx/conf.d/
