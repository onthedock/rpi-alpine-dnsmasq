CONTAINER_NAME="home-dns"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker run -d --name $CONTAINER_NAME \
	-p 53:53 -p 53:53/udp \
	--cap-add=NET_ADMIN \
	-v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf \
	-v $(pwd)/hosts:/etc/hosts \
	xaviaznar/rpi-dnsmasq

