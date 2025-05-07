# 🔧 KIT IT Koblenz – Docker Setup

Dieses Repository enthält ein vollständiges Setup für:

- die [KIT Website](https://hub.docker.com/r/commandercentrale/kit-website)
- [Caddy](https://caddyserver.com) als Reverse Proxy mit HTTPS
- Mailcow-Anbindung via Subdomains

## 📦 Quickstart

```bash
git clone https://github.com/DEIN_USERNAME/kit-it-koblenz-docker.git
cd kit-it-koblenz-docker
chmod +x setup.sh
./setup.sh
```


Danach starten:

```bash
docker compose -f docker-compose.yml -f docker-compose.override.yml up -d
```

✅ Caddy übernimmt automatisch das TLS-Handling.
