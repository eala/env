# search rpi ip
arp -na | grep -i b8:27:eb

# connect with ssh
ssh 192.168.1.111 -l pi

# connect GUI with ssh
ssh -Y 192.168.1.111 -l pi

