# Step by step create ssl certificate.

# 1.Installing  Certbot.
sudo snap install core; sudo snap refresh core
sudo apt remove certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

# 2.Confirming Nginx's configurations.
sudo nano /etc/nginx/sites-enable/`${your_domain}`

# ...
# server_name example.com www.example.com;
# ...

sudo nginx -t
sudo systemctl reload nginx

# 3.Allowing HTTPS Through the firewall
sudo ufw status
sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'
sudo ufw status

# 4.Obtaining an SSL certificate.
sudo certbot --nginx -d `${your_domain}`

# 5.Verifying Certbot auto-renewal
sudo systemctl status snap.certbot.renew.service
sudo certbot renew --dry-run

# 4.Testing encryption
# Open your browser and type https:// followed by server's domain name into the address bar:
https://`${your_server_domain}`