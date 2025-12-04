DESCRIPTION = "User space mappable DMA Buffer Driver"

LICENSE = "BSD-2-Clause"
LIC_FILES_CHKSUM = " \
    file://LICENSE;md5=bebf0492502927bef0741aa04d1f35f5 \
"

inherit module
require include/rz-cmn-modules-common.inc

DEPENDS = "linux-yocto"
PN = "kernel-module-udmabuf"
PV = "v3.2.4"

SRC_URI = "git://github.com/ikwzm/udmabuf.git;branch=master;protocol=https"
SRCREV = "24a1346c1f4371ef6161699c8ccb8bf968e6bb0a"

SRC_URI:append = " \
	file://0001-change-makefile.patch \
	file://0001-Support-u-dma-buf-for-kernel-6.10.patch \
"

S = "${WORKDIR}/git"

# Build u-dma-buf kernel module without suffix
KERNEL_MODULE_PACKAGE_SUFFIX = ""


do_compile() {
    cd ${S}
    make all
}


do_install () {
    install -d ${D}/${libdir}/modules/${KERNEL_VERSION}/kernel/
    install -m 644 ${B}/u-dma-buf.ko ${D}/${libdir}/modules/${KERNEL_VERSION}/kernel/
}

PACKAGES = " \
    ${PN} \
    ${PN}-dev \
"

FILES:${PN} = " \
    ${libdir}/modules/${KERNEL_VERSION}/kernel/u-dma-buf.ko \
"

#Package name aliases
RPROVIDES:${PN} += "kernel-module-udmabuf"

# Autoload u-dma-buf
KERNEL_MODULE_AUTOLOAD += "u-dma-buf"

INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
