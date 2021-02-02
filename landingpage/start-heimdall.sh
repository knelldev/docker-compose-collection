docker create \
  --name=heimdall \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Berlin \
  -p 8080:80 \
  -p 8443:443 \
  -v /opt/heimdall/config:/config \
  --restart unless-stopped \
  linuxserver/heimdall
