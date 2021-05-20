rm -rf bin/ lib/ &&
docker build --rm -t buildenv . &&
docker run -v $PWD:/output buildenv /bin/bash -c "cp -a /usr/local/bin /output/ && cp -a /usr/local/lib /output/ && cp -a /usr/local/sbin/usbmuxd /output/bin/ && cp -a /lib/x86_64-linux-gnu/libfuse* /output/lib/ && cp -a /lib/x86_64-linux-gnu/libm.* /lib/x86_64-linux-gnu/libm-* /output/lib/ && cp -a /lib/x86_64-linux-gnu/libpth* /output/lib/ && cp -a /lib/x86_64-linux-gnu/libudev* /output/lib/ && cp -a /lib/x86_64-linux-gnu/libusb-* /output/lib/" &&
chown 0:0 -R .
