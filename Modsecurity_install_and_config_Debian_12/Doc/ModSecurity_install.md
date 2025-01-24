# Download, Installation of ModSecurity and OWSAP CRS rules and HoneyPot Project API of malsicious IP in Revers Proxies
## Installation

- Purpose       :   Download and setup Modsecurity and CoreRulesSet for Nginx
- Author        :   Luca Bassi
- Date          :   25.10.2023
- Version       :   1.2

### Prerequisites

- An up to date running Nginx service
- An internet access

### Ansible functioning by steps (available in ansible script)

#### 1
- Update apt repostories

#### 2
- Make needed directories
- Download Modsecurity git repository
- Call script to commpil Modsecurity

#### 3
- Dynamically get the current version of Nginx
- Clone ModSecurity-nginx
- Download the source code corresponding to the installed version of NGINX
- Call script to commpil Modsecurity Connector to connect it to running Nginx

#### 4
- Configure ModSecurity with recommanded configuration

#### 5
- Load new Module in Nginx Configuration 
- Make needed directories
- Copy the main configuration of Modsecurity
- Modify modesurity.conf for 
  - to log HTTP transactions
  - the audit log
  - (the body response (commented in ansible script))

#### 6
- Download and includ CRS-Rules in Modsecurity
  
#### 7
- Refer the HoneyPot Project API IP blacklist in CRS

#### 8
- Configure logrotation

#### 9
- Delete build folder
- Purge unwanted packages
- Restart Nginx

## Test
See file called "ModSecurity_tests.md"

## Sources
https://www.linuxbabe.com/security/modsecurity-nginx-debian-ubuntu  
https://www.nginx.com/blog/compiling-and-installing-modsecurity-for-open-source-nginx/  
https://www.linuxcapable.com/how-to-install-modsecurity-3-nginx-owasp-crs-on-debian-linux/ 
https://www.projecthoneypot.org/