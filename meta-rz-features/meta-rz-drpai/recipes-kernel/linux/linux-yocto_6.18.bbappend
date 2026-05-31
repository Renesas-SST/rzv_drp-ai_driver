#
# Copyright (C) 2026 Renesas Electronics Corporation
#
DESCRIPTION = "DRP-AI Driver with kernel for RZ/V"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/:"

SRC_URI:append = "\
	file://0001-drpai-add-RZ-V-DRP-AI-character-driver.patch \
	file://0002-drpai-update-remove-callbacks-for-Linux-6.18.patch \
	file://0003-media-renesas-rzg2l-cru-adjust-AXI-burst-length.patch \
"
