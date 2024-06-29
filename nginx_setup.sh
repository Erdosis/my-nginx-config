# Disclaimer: 
# This file should only be used by crazy people who really like clean directories
# And don't like the default nginx configuration that's shipped with ubuntu. 
# Don't use this unless you know what you're doing. 

# Fix the mistake ubuntu upstream makes. Using conf.d as upstream intended. 
rm -rf /etc/nginx/sites-available
rm -rf /etc/nginx/sites-enabled

# Use one modules directory
rm -rf /etc/nginx/modules-available
rm -rf /etc/nginx/modules-enabled
mkdir /etc/nginx/modules

# Make ssl directory
mkdir /etc/nginx/ssl

# Make params directory
mkdir /etc/nginx/params
mv /etc/nginx/fastcgi_params /etc/nginx/params/
mv /etc/nginx/proxy_params /etc/nginx/params/
mv /etc/nginx/puwsgi_params /etc/nginx/params/
mv /etc/nginx/scgi_params /etc/nginx/params/

# Move encodings into their own dir, if needed
mkdir enc
mv /etc/nginx/koi-utf /etc/nginx/enc/
mv /etc/nginx/koi-win /etc/nginx/enc/
mv /etc/nginx/win-utf /etc/nginx/enc/

# Move fastcgi.conf to snippets
mv /etc/nginx/fastcgi.conf /etc/nginx/snippets/