FROM nginx:alpine
LABEL maintainer "Ando Roots <ando@sqroot.eu>"
EXPOSE 8080
EXPOSE 8443

RUN chmod -R 777 /var/log/nginx /var/cache/nginx/ /var/run/ && \
	rm -rf /etc/nginx/conf.d/ && \
	chmod -R 644 /etc/nginx/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY public /usr/share/nginx/html
