# minetest-server
#
# VERSION: see `TAG`

FROM pritunl/archlinux
MAINTAINER Darwin Corn/R4AT "dcorn@requiemforatheory.com"

RUN pacman -S leveldb minetest-server git --noconfirm
RUN git clone https://github.com/Calinou/carbone-ng /usr/share/minetest/games/carbone-ng
RUN mkdir -p /root/.minetest/worlds/caldera/
ADD conf/world.mt /root/.minetest/worlds/caldera/

EXPOSE 30000/udp

CMD minetestserver --gameid carbone-ng --worldname caldera
