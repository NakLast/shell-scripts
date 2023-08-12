# Step by step create ssl certificate without certbot.

# 1.Create self-signed key and certificate pair with OpenSSL.
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

# 2.Adjusting the Nginx Configuration to use SSL
sudo nano /etc/nginx/sites-enable/`${your_domain}`

# server {
#         listen 80;
#         listen [::]:80;

#         root /var/www/html;
#         index index.html index.htm index.nginx-debian.html;

#         server_name `${your_domain}`;

#         location / {
#                 try_files $uri $uri/ =404; // comment this line.
#                 proxy_pass http://localhost:7000/;
#         }
# }

# 3.Enabling the change in Nginx.
sudo nginx -t
sudo systemctl start nginx
# but before you run ngix you can use this command.
# sudo systemctl restart nginx

# 4.Testing encryption
# Open your browser and type https:// followed by server's domain name into the address bar:
https://`${your_server_domain}`