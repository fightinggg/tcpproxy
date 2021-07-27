cat /etc/nginx/nginx.conf | sed "s/proxyurl/$proxyurl/g" > tmp.conf 
mv tmp.conf /etc/nginx/nginx.conf
nginx
