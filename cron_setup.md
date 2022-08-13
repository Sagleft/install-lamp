to renew ssl cert:

```
EDITOR=nano crontab -e
```

then add line:

```
00 00 5 * * certbot renew --renew-hook "systemctl reload httpd.service"
```
