FROM base/archlinux
MAINTAINER Taylor "Nekroze" Lawson

RUN pacman -Sy --noconfirm
RUN pacman -S --noconfirm python2 git libssl-dev

RUN git clone https://github.com/DobyTang/LazyLibrarian.git /lazylibrarian

VOLUME /config

EXPOSE 5299

CMD python2 /lazylibrarian/LazyLibrarian.py --datadir /config
