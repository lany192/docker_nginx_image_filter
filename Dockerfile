FROM nginx:stable

RUN mkdir /cache && chmod 777 /cache
COPY nginx.conf /etc/nginx/nginx.conf
COPY module.conf /etc/nginx/module.conf
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]