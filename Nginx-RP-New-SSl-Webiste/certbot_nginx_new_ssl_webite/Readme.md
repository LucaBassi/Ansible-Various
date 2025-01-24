# Certbot Install for Nginx

Playbook : playbook_certbot_new_site.yml

## Purpose

Create new RP website and vreate Certbot SSL certificate by sites

## Requirements 

- An instenet connexion
- HTTP and HTTPS Port forwarding from public IP address to RP IP address
- Fill the site vars in playbook
  - name    : fqdn DNS name of site 
  - ip      : IP address of internal web server 

## Detailed steps

- Create a tomporary http nginx config file 
- Create new certificate with Certbot           
- Copy a clean SSL nginx config file site for any new site

