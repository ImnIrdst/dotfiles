#!/bin/bash

# Put your password in a ~/.vpnmakers file
# Put your username in this script where you find USERNAME.
# Place script in /usr/bin.
# chmod +x /usr/bin/vpn.sh

par0=$1
par1=$2
par2=$3

if   [ "${par1:0:1}" == "u" ]; then
        sudo pkill -SIGINT openconnect
        sudo openconnect -b -u ir294772 --servercert sha256:d1988b24b9455378e624d87fc91c1696598b5303b43eb0695a51a33f9c20830f --passwd-on-stdin $3.cisadd2.com < /Users/iman/.config/.vpnmakers
elif [ "${par1:0:1}" == "d" ]; then
        sudo pkill -SIGINT openconnect
elif [ "${par0:0:1}" == "s" ]; then
        ps aux | grep openconnect
elif [ "${par0:0:1}" == "i" ]; then
	ping twitter.com
elif [ "${par0:0:1}" == "h" ]; then
        echo 'Usage:
        This command need root privileges.
        vpn {c SERVER, s, d}
                c SERVER
                        Connecting to SERVER.cisadd.com .
                s
                        Printing status of program.
                d
                        Disconnecting from server.
		i
			Is connected (pings twitter)
                h
                        Printing this manual.'
fi

exit
