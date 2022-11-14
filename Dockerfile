FROM nginx:latest

COPY /var/jenkins_home/workspace/cicd-vuejs/dist/. /usr/share/nginx/html

EXPOSE 80
