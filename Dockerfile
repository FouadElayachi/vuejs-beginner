FROM nginx:latest

ADD ./cicd-vuejs/dist/ /usr/share/nginx/html/

EXPOSE 80
