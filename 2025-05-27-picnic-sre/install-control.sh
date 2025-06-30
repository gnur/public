#!/bin/bash

curl -fsSL https://tailscale.com/install.sh | sh

curl -sfL https://get.k3s.io | \
INSTALL_K3S_EXEC="server" sh -s - --tls-san="control.goat-gecko.ts.net" \
--vpn-auth="name=tailscale,joinKey=tskey-auth-k6HbhApshw11CNTRL-fu8XxqoAZwYCcREimb4VoYSuu9iqrqFa,extraArgs=--ssh"