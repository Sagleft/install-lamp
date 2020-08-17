run

```bash
EDITOR=nano crontab -e
```

put:

```
@daily ~/certbot/certbot-auto -q renew
```

save &..

```bash
systemctl restart crond
```
