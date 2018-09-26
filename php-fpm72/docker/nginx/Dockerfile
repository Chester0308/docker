FROM nginx

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.off
ADD ./settings/nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./settings/nginx/fastcgi.conf /etc/nginx/fastcgi.conf
ADD ./settings/nginx/conf.d/server.conf /etc/nginx/conf.d/server.conf
ADD ./ssh-keys/localhost.key /etc/ssl/private/localhost.key
ADD ./ssh-keys/localhost.crt /etc/ssl/certs/localhost.crt
