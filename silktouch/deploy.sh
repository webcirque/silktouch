#!/usr/bin/bash
bash build.sh
cp artifact /etc/caddy/Caddyfile
caddy reload -config /etc/caddy/Caddyfile
exit
