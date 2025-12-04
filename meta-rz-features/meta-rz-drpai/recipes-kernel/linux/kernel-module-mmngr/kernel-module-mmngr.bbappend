DESCRIPTION = "Memory Manager Kernel module for Renesas RZ/V"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/:"

SRC_URI:append = " \
    file://0013-Fix-user-memory-access-error-to-flush-proccesing.patch \
"
