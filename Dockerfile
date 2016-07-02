# minetest-server
#
# VERSION: see `TAG`

FROM pritunl/archlinux
MAINTAINER Darwin Corn/R4AT "dcorn@requiemforatheory.com"

RUN pacman -S leveldb minetest --noconfirm
