docker stop home-dns
docker rm home-dns
docker run -d --name home-dns \
	-p 53:53 -p 53:53/udp \
	--cap-add=NET_ADMIN \
	-v $(PWD)/dnsmasq.conf:/etc/dnsmasq.conf \
	-v $(PWD)/hosts:/etc/hosts \
	xaviaznar/rpi-dnsmasq

