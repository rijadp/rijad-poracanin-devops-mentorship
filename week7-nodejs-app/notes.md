## Instalacija NGINX-a
```bash
$ sudo yum install nginx -y # instalacija Nginx-a
$ sudo systemctl start nginx # pokretanje Nginx-a
```
## Konfiguracija Node.js aplikacije

```bash
$ sudo yum install -y gcc-c++ make # Install build tools
$ sudo yum install nodejs # Install Node.js
```

#### NGINX setup
```bash
$ cd /etc/nginx/conf.d
$ vi node-app.conf
```
gdje je `node-app.conf`:

```nginx
server {
  listen 80;
  server_name 54.90.195.71;

  location / {
    proxy_pass http://127.0.0.1:8008;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host $host;
    proxy_cache_bypass $http_upgrade;
  }
}
```