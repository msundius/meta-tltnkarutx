FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto/tltnka:"

KCONFIG_MODE = "--alldefconfig"

#KBRANCH_tltnkarutx  = "v5.4/standard/arm-versatile-926ejs"
#SRCREV_machine_tltnkarutx    ?= "68d72016ff9b615e95eb988200c7fd7ebb7cb9b9"
KBRANCH_tltnkarutx  = "v5.4/base"
SRCREV_machine_tltnkarutx    ?= "c57b1153a58a6263863667296b5f00933fc46a4f"

KMACHINE_tltnkarutx ?= "ipq40xx"


COMPATIBLE_MACHINE_tltnkarutx = "tltnkarutx"

LINUX_VERSION_tltnkarutx = "5.4.52"

SRC_URI_append += "file://tltnkarutx/defconfig \
					file://integrity.scc \
					file://essedma.tgz \
                    file://tltnkarutx-patch/0036-GPIO-add-named-gpio-exports.patch \
					file://039-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch \
					file://040-crypto-qce-switch-to-skcipher-API.patch \
					file://041-crypto-qce-fix-ctr-aes-qce-block-chunk-sizes.patch \
					file://042-crypto-qce-fix-xts-aes-qce-key-sizes.patch \
					file://043-crypto-qce-save-a-sg-table-slot-for-result-buf.patch \
					file://044-crypto-qce-update-the-skcipher-IV.patch \
					file://046-crypto-qce-initialize-fallback-only-for-AES.patch \
					file://047-crypto-qce-use-cryptlen-when-adding-extra-sgl.patch \
					file://048-crypto-qce-use-AES-fallback-for-small-requests.patch \
					file://049-crypto-qce-handle-AES-XTS-cases-that-qce-fails.patch \
					file://051-crypto-qce-allow-building-only-hashes-ciphers.patch \
                    file://tltnkarutx-patch/059-ARM-cpuidle-Add-cpuidle-support-for-QCOM-cpus.patch \
					file://071-02-ipq40xx-Fix-booting-secondary-cores.patch \
					file://074-ARM-qcom-Add-IPQ4019-SoC-support.patch \
					file://075-dt-bindings-phy-qcom-ipq4019-usb-add-binding-documen.patch \
					file://076-phy-qcom-ipq4019-usb-add-driver-for-QCOM-IPQ4019.patch \
					file://077-qcom-ipq4019-add-USB-devicetree-nodes.patch \
					file://080-ARM-dts-qcom-add-gpio-ranges-property.patch \
					file://081-clk-fix-apss-cpu-overclocking.patch \
					file://086-ipq40xx-fix-high-resolution-timer.patch \
					file://088-v5.6-regulator-add-IPQ4019-SDHCI-VQMMC-LDO-driver.patch \
					file://089-v5.5-ARM-dts-qcom-ipq4019-Add-SDHCI-controller-node.patch \
					file://100-arm-dts-IPQ4019-add-SDHCI-VQMMC-LDO-node.patch \
                    file://tltnkarutx-patch/104-0000-mtd-nand-add-Winbond-manufacturer-and-chip.patch \
                    file://tltnkarutx-patch/104-0001-mtd-nand-add-Winbond-W25M02GV-chip.patch \
                    file://tltnkarutx-patch/104-0002-mtd-nand-add-XTX-XT26G02AWS-support.patch \
                    file://tltnkarutx-patch/104-0006-mtd-nand-add-Gigadevice-GD5F2GQ4XB-support.patch \
                    file://tltnkarutx-patch/104-0007-mtd-nand-add-Fudan-FM25G02.patch \
					file://300-clk-qcom-ipq4019-add-ess-reset.patch \
					file://304-mtd-spi-nor-Add-support-for-mx25r3235f.patch \
                    file://tltnkarutx-patch/310-msm-adhoc-bus-support.patch \
                    file://tltnkarutx-patch/311-qcom-ipq-add-bootconfig-driver.patch \
					file://400-mmc-sdhci-sdhci-msm-use-sdhci_set_clock-instead-of-s.patch \
					file://700-net-add-qualcomm-mdio.patch \
					file://701-dts-ipq4019-add-mdio-node.patch \
					file://702-dts-ipq4019-add-PHY-switch-nodes.patch \
					file://703-net-IPQ4019-needs-rfs-vlan_tag-callbacks-in.patch \
					file://705-net-add-qualcomm-ar40xx-phy.patch \
					file://709-add-edma-driver.patch \
					file://710-net-add-qualcomm-essedma-ethernet-driver.patch \
					file://711-dts-ipq4019-add-ethernet-essedma-node.patch \
					file://721-dts-ipq4019-add-ethernet-essedma-node.patch \
                    file://tltnkarutx-patch/820-qcom-ipq4019-Add-IPQ4019-USB-HS-SS-PHY-drivers.patch \
                    file://tltnkarutx-patch/830-usb-dwc3-register-qca-ipq4019-dwc3-in-dwc3-of-simple.patch \
					file://850-soc-add-qualcomm-syscon.patch \
                    file://tltnkarutx-patch/864-05-dts-ipq4019-ap-dk01-remove-spi-chip-node-from-dtsi.patch \
                    file://tltnkarutx-patch/864-07-dts-ipq4019-ap-dk01.1-c1-add-spi-and-ram-nodes.patch \
                    file://tltnkarutx-patch/864-08-dts-ipq4019-ap-dk01.1-c1-add-compatible-string.patch \
					file://888-add-rutx-dts.patch \
					file://900-dts-ipq4019-ap-dk01.1.patch \
					file://901-arm-boot-add-dts-files.patch \
					file://997-device_tree_cmdline.patch \
					file://1001-openwrt-changes-for-v5.4.52.patch \
					file://1002-ncurses-for-kconfig-script.patch \
                    file://tltnkarutx-patch/400-mtd-ubi-add-quirk-to-autoload-ubi-on-rt-ac58u.patch \
 "

#                    file://tltnkarutx-patch/713-qca8075-auto-fiber-detection.patch 
#                    file://tltnkarutx-patch/714-qca8075-report-combo-port-link-state-to-netdev.patch 
#                    file://tltnkarutx-patch/715-qca8075-ethtool-combo-port-speed.patch 
#                    file://tltnkarutx-patch/716-ar40xx-soft-delay-reset.patch 
#                    file://tltnkarutx-patch/717-ar40xx-dump-arl-support.patch 
#                    file://tltnkarutx-patch/104-0003-mtd-modify-spinand-mt29f-driver.patch 
#                    file://tltnkarutx-patch/104-0004-fix-page-id-argument-size-in-mt29f-driver.patch 
#                    file://tltnkarutx-patch/104-0005-fix-block-id-argument-size-in-mt29f-driver.patch 
