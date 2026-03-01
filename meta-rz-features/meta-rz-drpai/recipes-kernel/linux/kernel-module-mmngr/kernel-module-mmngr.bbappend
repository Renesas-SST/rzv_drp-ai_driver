DESCRIPTION = "Memory Manager Kernel module for Renesas RZ/V"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/:"

SRC_URI:append = " \
    file://0016-Fix-user-memory-access-error-to-flush-proccesing.patch \
    file://0017-kernel-module-mmngr-bug-fix.patch \
"
