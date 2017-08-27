docker stop home-dns
docker rm home-dns
docker run -d --name home-dns \
	-p 53:53 -p 53:53/udp \
	--cap-add=NET_ADMIN \
	-v /home/pirate/home-dns/dnsmasq.conf:/etc/dnsmasq.conf \
	-v /home/pirate/home-dns/hosts:/etc/hosts \
	xaviaznar/rpi-dnsmasq

