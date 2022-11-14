FROM nginx:latest

COPY /var/jenkins_home/workspace/cicd-vuejs/dist/*.html /usr/share/nginx/html

EXPOSE 80
