# !/bin/bash

sudo service dnscrypt-proxy stop
echo -e 'nameserver 194.146.151.20 \nnameserver 194.146.151.21 | sudo tee etc/resolv.conf && echo Done!'
