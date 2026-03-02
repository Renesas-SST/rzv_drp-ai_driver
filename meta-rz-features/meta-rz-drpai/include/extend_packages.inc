# extend packages
IMAGE_INSTALL:append = " \
    libjpeg-turbo-dev \
    kernel-module-udmabuf \
    opencv \
    opencv-dev \
"

IMAGE_INSTALL:append = " \
        kernel-module-mmngr \
        kernel-module-mmngrbuf \
        mmngrbuf-user-module \
        mmngr-user-module \
"

IMAGE_INSTALL:append = " drpai "