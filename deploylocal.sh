docker build -t r4at/caldera .
docker create -v /root/.minetest --name calderadata r4at/caldera /bin/true
docker run -d --volumes-from calderadata -p 30000:30000/udp --name=caldera --restart=always r4at/caldera
