#!/bin/bash

set -e

cat > ~/.ssh/authorized_keys << 'EOF'
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP7TTu31bZEE97hjx3Rz7xdUZfR33Jmc0Pu/CWMIK2E6 hz@hzs-MacBook-Pro.local
EOF

echo "Auth applied successfully!"