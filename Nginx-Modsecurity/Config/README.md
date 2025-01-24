# Configuration of ModSecurity for individual websites
## Configuration

- Purpose       :   Configure Modsecurity and CoreRulesSet for specific Nginx sites
- Author        :   Luca Bassi
- Date          :   25.10.2023
- Version       :   1.2

### Prerequisites (Optionnal)

- HonneyPot API key variable in hosts.cfg ansible file
- Setted variables "sites_list" in playbook with fqdn of target site
(Optionnal)
- Individual config site files in : Config/config_files/modsec_individual_sites_config/["fqdn"]/individual.conf

### Ansible functioning by steps (available in ansible script)

- Backup existing site config files
- Enable Modsecurity by site and refer rules files
- Reload services

## Sources
https://www.linuxbabe.com/security/modsecurity-nginx-debian-ubuntu  
https://www.nginx.com/blog/compiling-and-installing-modsecurity-for-open-source-nginx/  
https://www.linuxcapable.com/how-to-install-modsecurity-3-nginx-owasp-crs-on-debian-linux/ 
https://www.projecthoneypot.org/