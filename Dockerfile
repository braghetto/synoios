FROM debian:jessie
MAINTAINER arthurmb@gmail.com

RUN apt-get update
RUN apt-get install -y build-essential checkinstall git autoconf automake libtool-bin libplist-dev libusbmuxd-dev libssl-dev usbmuxd python3 python3-dev pkg-config libusb-1.0-0-dev fuse libfuse-dev libfuse2

ENV PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
ENV LD_LIBRARY_PATH="/usr/local/lib"
ENV LDFLAGS='-L/usr/local/lib/'

RUN cd /root && git clone https://github.com/libimobiledevice/libplist.git && cd libplist && ./autogen.sh --prefix=/usr/local && make && make install
RUN cd /root && git clone https://github.com/libimobiledevice/libusbmuxd.git && cd libusbmuxd && ./autogen.sh --prefix=/usr/local && make && make install
RUN cd /root && git clone https://github.com/libimobiledevice/libimobiledevice.git && cd libimobiledevice && ./autogen.sh --prefix=/usr/local && make && make install
RUN cd /root && git clone https://github.com/libimobiledevice/usbmuxd.git && cd usbmuxd && ./autogen.sh --prefix=/usr/local && make && make install
RUN cd /root && git clone https://github.com/libimobiledevice/ifuse.git && cd ifuse && ./autogen.sh --prefix=/usr/local && make && make install
RUN cd /root && rm -rf *

