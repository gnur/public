#!/bin/bash

TS_TOKEN=tskey-auth-k6HbhApshw11CNTRL-fu8XxqoAZwYCcREimb4VoYSuu9iqrqFa
K3S_TOKEN=K1049f10afccda03fd229859282720537748f5d0455e0ace13c87db9c36483d3116::server:6856c8278dce1a1da521c95b75655c85

# Sometimes apt hangs on boot, this should retry until it works
while ! command -v tailscale 2>&1 >/dev/null; do
  curl -fsSL https://tailscale.com/install.sh | sh
  sleep 0.5
done

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent" K3S_URL=https://control.goat-gecko.ts.net:6443 \
  K3S_TOKEN="${K3S_TOKEN}" sh -s - \
  --vpn-auth="name=tailscale,joinKey=${TS_TOKEN},extraArgs=--ssh"
