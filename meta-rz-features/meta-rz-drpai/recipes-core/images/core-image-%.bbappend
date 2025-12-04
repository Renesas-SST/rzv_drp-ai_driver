require include/core-image-sdk.inc
require include/extend_packages.inc

IMAGE_INSTALL:append = " \
        kernel-module-mmngr \
        kernel-module-mmngrbuf \
        mmngrbuf-user-module \
        mmngr-user-module \
"

IMAGE_INSTALL:append = " drpai "