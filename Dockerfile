FROM nginx:latest

WORKDIR /usr/share/nginx/html/

RUN rm -rf *

COPY ./dist/ ./

EXPOSE 80
