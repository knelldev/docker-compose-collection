docker create \
  --name=organizr \
  -v ./config:/config \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 8081:80 \
  -e fpm="false" `#optional` \
  -e branch="v2-master" `#optional` \
  organizr/organizr