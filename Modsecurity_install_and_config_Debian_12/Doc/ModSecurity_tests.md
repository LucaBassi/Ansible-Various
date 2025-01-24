# Modsecurity, CRS, HoneyPot, Custom IP blacklist Tests
## Modsecurity alone connected to Nginx test

### Expected result for all tests
```html
<html>
<head><title>403 Forbidden</title></head>
<body>
<center><h1>403 Forbidden</h1></center>
<hr><center>nginx/1.22.1</center>
</body>
</html>
```
--- 
### Basic ModSecurity test rule
*Add rule in file **/etc/nginx/modsec/main.conf***  
SecRule ARGS:testparam "@contains test" "id:1234,deny,status:403"  
`curl https://yourdomain.com/?testparam=test`

### OWASP CRS Rules test
**In Browser only**  
Paranoia level 1  
`https://yourdomain.com/?id=3 or 'a'='a'`

Paranoia level 4 (without a " ' ")  
`https://yourdomain.com/?id=3 or a'='a'`


## block argument with IP in URL for HonyPot Project Test
*Add rule in file **/etc/nginx/modsec/main.conf** to allow ip in url*   
SecRule ARGS:IP "@rbl dnsbl.httpbl.org" "phase:1,id:171,t:none,deny,nolog,auditlog,msg:'RBL Match for SPAM Source'  

`curl -i -s -k -X $'GET' 'https://yourdomain.com/?IP=ip_blocked_by_honey_pot'`


## test Custom blacklist
SecRule ARGS:IP "@ipMatchFromFile /usr/local/src/nginx/blacklist.txt" "phase:1,id:1237,t:none,deny,nolog,auditlog,msg:'IP in URL from custom Blacklist'

## Custom Blacklist /usr/local/src/nginx/blacklist.txt
SecRule REMOTE_ADDR "@ipMatchF /usr/local/src/nginx/blacklist.txt" "phase:1,id:1236,t:none,deny,nolog,auditlog,msg:'Remote address source in custom Blacklist'


