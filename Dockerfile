FROM nginx:latest

ADD /var/jenkins_home/workspace/cicd-vuejs/dist/ /usr/share/nginx/html/

EXPOSE 80
