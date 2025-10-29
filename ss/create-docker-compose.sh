#!/bin/bash

set -e

cat > docker-compose.yml << 'EOF'
services:
  shadowsocks:
    image: shadowsocks/shadowsocks-libev
    container_name: ss-server
    restart: unless-stopped
    ports:
      - "8383:8383/udp"  # Shadowsocks 端口
      - "8383:8383/tcp"  # Shadowsocks 端口
    environment:
      - SERVER_PORT=8383
      - PASSWORD=12345678  # ← 修改这里！
      - METHOD=aes-256-gcm    # 加密方式（推荐）
      - TIMEOUT=300
      - FAST_OPEN=1
    volumes:
      - ss-config:/etc/shadowsocks-libev
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ss-config:
EOF

echo "docker-compose.yml created successfully!"