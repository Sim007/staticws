#!/sh
sed -i s/containername/$HOSTNAME/ /usr/share/nginx/html/index.html
nginx -g 'daemon off;'