# MySQL base image use kar rahe hain
FROM nginx:alpine

# Environment variable se root password set kar rahe hain
#ENV MYSQL_ROOT_PASSWORD=rootpassword

# SQL dump file ko container ke andar 'docker-entrypoint-initdb.d' directory me copy kar rahe hain
COPY ./database /root 
COPY ./index.html /index.html
# Port expose kar rahe hain
EXPOSE 80
