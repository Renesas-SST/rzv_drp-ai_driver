# extend packages
IMAGE_INSTALL:append = " \
	libjpeg-turbo-dev \
	kernel-module-udmabuf \
	opencv \
	opencv-dev \
	kernel-module-mmngr \
	kernel-module-mmngrbuf \
	mmngrbuf-user-module \
	mmngr-user-module \
	lib-tvm \
	sudo \
	python3-modules \
	python3-pip \
	python3-wheel \
	python3-setuptools \
	python3-numpy \
	python3-pandas \
	python3-pillow \
	python3-opencv \
"

IMAGE_INSTALL:append = " drpai "

TOOLCHAIN_TARGET_TASK:append = " drpai "
