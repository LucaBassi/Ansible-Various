# Certbot Install for Nginx

Playbook : playbook_certbot_install.yml

## Purpose

Install Certbot snapd for Nginx in Debian 12

## Requirements 

An internet connexion

## Detailed steps

- Install certbot snapd package
- Creat symlink for use  bash certbot command         
  - path: /usr/bin/certbot
  - src: /snap/bin/certbot
- Register mail address
- Create a conjob task for certificate renewing
- Reload Nginx service

