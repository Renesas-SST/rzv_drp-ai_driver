#
# Copyright (C) 2026 Renesas Electronics Corporation
#
DESCRIPTION = "DRP-AI Driver with kernel for RZ/V"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/:"

SRC_URI:append = "\
	file://0001-rz-cmn-Add-support-for-RZ-V-DRP-AI-driver.patch \
	file://0002-set-cru-amnaxiattr-axilen.patch \
	file://0003-arm64-dts-renesas-imdt-v2h-sbc-add-drp-ai-node.patch \
"
