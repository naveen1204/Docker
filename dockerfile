FROM centos
RUN yum install epel-release -y --nogpgcheck
RUN yum install nginx -y --nogpgcheck

COPY index1.html /tmp
COPY index2.html /tmp
COPY index3.html /tmp
COPY nginx.conf /etc/nginx/

RUN cp /tmp/index{1,2,3}.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
