FROM centos
RUN yum install nginx -y
COPY default.conf /etc/nginx/nginx.conf
COPY start.sh /start.sh
CMD ["bash","/start.sh"]
