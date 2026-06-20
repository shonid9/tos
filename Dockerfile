FROM nginx:alpine

RUN rm -f /usr/share/nginx/html/index.html

COPY . /usr/share/nginx/html
COPY default.conf.template /etc/nginx/templates/default.conf.template

RUN cp /usr/share/nginx/html/TOS.dc.html /usr/share/nginx/html/index.html \
    && rm -f /usr/share/nginx/html/default.conf.template /usr/share/nginx/html/.dockerignore

ENV PORT=80
EXPOSE 80
