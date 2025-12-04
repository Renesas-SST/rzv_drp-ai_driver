#
# Copyright (C) 2026 Renesas Electronics Corporation
#
DESCRIPTION = "DRP-AI Driver with kernel for RZ/V"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/:"

SRC_URI:append = "\
	file://0001-rz-cmn-Add-support-for-RZ-V-DRP-AI-driver.patch \
"
