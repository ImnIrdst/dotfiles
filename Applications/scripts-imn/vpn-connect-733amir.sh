#!/bin/bash

# Put your password in a ~/.vpnmakers file
# Put your username in this script where you find USERNAME.
# Place script in /usr/bin.
# chmod +x /usr/bin/vpn.sh

par0=$1
par1=$2
par2=$3

if   [ "${par1:0:1}" == "u" ]; then
        openconnect -b -u iruser788867 --passwd-on-stdin --no-cert-check $3.cisadd.com <<< 'XXXXX'
elif [ "${par1:0:1}" == "d" ]; then
        pkill -SIGINT openconnect
elif [ "${par1:0:1}" == "s" ]; then
        ps aux | grep openconnect
elif [ "${par1:0:1}" == "h" ]; then
        echo 'Usage:
        This command need root privileges.
        vpn {c SERVER, s, d}
                c SERVER
                        Connecting to SERVER.cisadd.com .
                s
                        Printing status of program.
                d
                        Disconnecting from server.
                h
                        Printing this manual.'
fi

exit
