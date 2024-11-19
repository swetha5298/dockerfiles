FROM almalinux:9
RUN dnf install nginx -y
RUN rm -f /usr/share/nginx/html/index.html
ADD (url) /usr/share/nginx/html/index.html
RUN chmod+x /usr/share/nginx/html/index.html
CMD [ "nginx","-g","daemon off;"]