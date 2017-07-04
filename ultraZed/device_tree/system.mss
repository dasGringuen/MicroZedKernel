
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = device_tree
 PARAMETER PROC_INSTANCE = psu_cortexa53_0
 PARAMETER bootargs = console=ttyPS0,115200 root=/dev/mmcblk0p2 rw earlyprintk rootfstype=ext4 rootwait
 PARAMETER console_device = psu_uart_0
 PARAMETER main_memory = psu_ddr_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu_cortexa53
 PARAMETER HW_INSTANCE = psu_cortexa53_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = axi_bram_ctrl_0
 PARAMETER compatible = xlnx,axi-bram-ctrl-4.0
 PARAMETER reg = 0x0 0x81000000 0x0 0x2000
 PARAMETER xlnx,bram-addr-width = 11
 PARAMETER xlnx,bram-inst-mode = EXTERNAL
 PARAMETER xlnx,ecc = 0
 PARAMETER xlnx,ecc-onoff-reset-value = 0
 PARAMETER xlnx,ecc-type = 0
 PARAMETER xlnx,fault-inject = 0
 PARAMETER xlnx,memory-depth = 2048
 PARAMETER xlnx,s-axi-ctrl-addr-width = 32
 PARAMETER xlnx,s-axi-ctrl-data-width = 32
 PARAMETER xlnx,s-axi-id-width = 16
 PARAMETER xlnx,s-axi-supports-narrow-burst = 1
 PARAMETER xlnx,select-xpm = 0
 PARAMETER xlnx,single-port-bram = 1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scugic
 PARAMETER HW_INSTANCE = psu_acpu_gic
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_adma_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_afi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_afi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_afi_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_afi_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_afi_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_afi_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_afi_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ams
 PARAMETER HW_INSTANCE = psu_ams
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_apm_0
 PARAMETER xlnx,enable-32bit-filter-id = 1
 PARAMETER xlnx,enable-advanced = 1
 PARAMETER xlnx,enable-event-count = 1
 PARAMETER xlnx,enable-event-log = 0
 PARAMETER xlnx,enable-profile = 0
 PARAMETER xlnx,enable-trace = 0
 PARAMETER xlnx,fifo-axis-depth = 32
 PARAMETER xlnx,fifo-axis-tdata-width = 56
 PARAMETER xlnx,fifo-axis-tid-width = 1
 PARAMETER xlnx,global-count-width = 32
 PARAMETER xlnx,have-sampled-metric-cnt = 1
 PARAMETER xlnx,metric-count-scale = 1
 PARAMETER xlnx,metrics-sample-count-width = 32
 PARAMETER xlnx,num-monitor-slots = 6
 PARAMETER xlnx,num-of-counters = 10
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_apm_1
 PARAMETER xlnx,enable-32bit-filter-id = 1
 PARAMETER xlnx,enable-advanced = 1
 PARAMETER xlnx,enable-event-count = 1
 PARAMETER xlnx,enable-event-log = 0
 PARAMETER xlnx,enable-profile = 0
 PARAMETER xlnx,enable-trace = 0
 PARAMETER xlnx,fifo-axis-depth = 32
 PARAMETER xlnx,fifo-axis-tdata-width = 56
 PARAMETER xlnx,fifo-axis-tid-width = 1
 PARAMETER xlnx,global-count-width = 32
 PARAMETER xlnx,have-sampled-metric-cnt = 1
 PARAMETER xlnx,metric-count-scale = 1
 PARAMETER xlnx,metrics-sample-count-width = 32
 PARAMETER xlnx,num-monitor-slots = 1
 PARAMETER xlnx,num-of-counters = 3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_apm_2
 PARAMETER xlnx,enable-32bit-filter-id = 1
 PARAMETER xlnx,enable-advanced = 1
 PARAMETER xlnx,enable-event-count = 1
 PARAMETER xlnx,enable-event-log = 0
 PARAMETER xlnx,enable-profile = 0
 PARAMETER xlnx,enable-trace = 0
 PARAMETER xlnx,fifo-axis-depth = 32
 PARAMETER xlnx,fifo-axis-tdata-width = 56
 PARAMETER xlnx,fifo-axis-tid-width = 1
 PARAMETER xlnx,global-count-width = 32
 PARAMETER xlnx,have-sampled-metric-cnt = 1
 PARAMETER xlnx,metric-count-scale = 1
 PARAMETER xlnx,metrics-sample-count-width = 32
 PARAMETER xlnx,num-monitor-slots = 1
 PARAMETER xlnx,num-of-counters = 3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_apm_5
 PARAMETER xlnx,enable-32bit-filter-id = 1
 PARAMETER xlnx,enable-advanced = 1
 PARAMETER xlnx,enable-event-count = 1
 PARAMETER xlnx,enable-event-log = 0
 PARAMETER xlnx,enable-profile = 0
 PARAMETER xlnx,enable-trace = 0
 PARAMETER xlnx,fifo-axis-depth = 32
 PARAMETER xlnx,fifo-axis-tdata-width = 56
 PARAMETER xlnx,fifo-axis-tid-width = 1
 PARAMETER xlnx,global-count-width = 32
 PARAMETER xlnx,have-sampled-metric-cnt = 1
 PARAMETER xlnx,metric-count-scale = 1
 PARAMETER xlnx,metrics-sample-count-width = 32
 PARAMETER xlnx,num-monitor-slots = 1
 PARAMETER xlnx,num-of-counters = 3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_apu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_cci_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_cci_reg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_coresight_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_crf_apb
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_crl_apb
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_csudma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ctrl_ipi
 PARAMETER compatible = xlnx,PERIPHERAL-1.0
 PARAMETER reg = 0x0 0xff380000 0x0 0x80000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrps
 PARAMETER HW_INSTANCE = psu_ddr_0
 PARAMETER reg = 0x0 0x0 0x0 0x80000000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_phy
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_qos_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_xmpu0_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_xmpu1_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_xmpu2_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_xmpu3_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_xmpu4_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ddr_xmpu5_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrcps
 PARAMETER HW_INSTANCE = psu_ddrc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dp
 PARAMETER HW_INSTANCE = psu_dp
 PARAMETER phy-names = dp-phy0","dp-phy1
 PARAMETER phys = lane3 5 0 3 27000000>,
		<&lane2 5 1 3 27000000
 PARAMETER xlnx,max-lanes = 2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_dpdma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_efuse
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER HW_INSTANCE = psu_ethernet_3
 PARAMETER phy-mode = rgmii-id
 PARAMETER xlnx,ptp-enet-clock = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_fpd_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_fpd_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_fpd_slcr_secure
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_fpd_xmpu_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_fpd_xmpu_sink
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = psu_gdma_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpiops
 PARAMETER HW_INSTANCE = psu_gpio_0
 PARAMETER emio-gpio-width = 32
 PARAMETER gpio-mask-high = 0
 PARAMETER gpio-mask-low = 22016
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_gpu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER HW_INSTANCE = psu_i2c_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_iou_scntr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_iou_scntrs
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_iousecure_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_iouslcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ipi_0
 PARAMETER xlnx,base-address = 0xFF300000
 PARAMETER xlnx,bit-position = 0
 PARAMETER xlnx,buffer-base = 0xFF990400
 PARAMETER xlnx,buffer-index = 2
 PARAMETER xlnx,cpu-name = APU
 PARAMETER xlnx,int-id = 67
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_lpd_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_lpd_slcr_secure
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_lpd_xppu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_lpd_xppu_sink
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_mbistjtag
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_message_buffers
 PARAMETER compatible = xlnx,PERIPHERAL-1.0
 PARAMETER reg = 0x0 0xff990000 0x0 0x10000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ocmcps
 PARAMETER HW_INSTANCE = psu_ocm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ocm_ram_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_ocm_xmpu_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_pmu_global_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = qspips
 PARAMETER HW_INSTANCE = psu_qspi_0
 PARAMETER is-dual = 1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_qspi_linear_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_r5_0_atcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_r5_0_btcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_r5_1_atcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_r5_1_btcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_r5_tcm_ram_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_rcpu_gic
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_rpu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_rsa
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_rtc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_sata
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sdps
 PARAMETER HW_INSTANCE = psu_sd_0
 PARAMETER clock-frequency = 199998000
 PARAMETER xlnx,mio_bank = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sdps
 PARAMETER HW_INSTANCE = psu_sd_1
 PARAMETER clock-frequency = 199998000
 PARAMETER xlnx,mio_bank = 1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_serdes
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_siou
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_smmu_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_smmu_reg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER HW_INSTANCE = psu_ttc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER HW_INSTANCE = psu_ttc_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER HW_INSTANCE = psu_ttc_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER HW_INSTANCE = psu_ttc_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER HW_INSTANCE = psu_uart_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER HW_INSTANCE = psu_uart_1
 PARAMETER port-number = 1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = psu_usb_0
 PARAMETER xlnx,usb-reset = 50000000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = usbps
 PARAMETER HW_INSTANCE = psu_usb_xhci_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = wdtps
 PARAMETER HW_INSTANCE = psu_wdt_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = wdtps
 PARAMETER HW_INSTANCE = psu_wdt_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = signal_switch_0
 PARAMETER compatible = xlnx,signal-switch-1.27
 PARAMETER interrupt-parent = gic
 PARAMETER interrupts = 0 89 4
 PARAMETER reg = 0x0 0x80000000 0x0 0x80000
 PARAMETER xlnx,extern-sync = false
 PARAMETER xlnx,m00-axi-addr-width = 32
 PARAMETER xlnx,m00-axi-aruser-width = 0
 PARAMETER xlnx,m00-axi-awuser-width = 0
 PARAMETER xlnx,m00-axi-burst-len = 16
 PARAMETER xlnx,m00-axi-buser-width = 0
 PARAMETER xlnx,m00-axi-data-width = 64
 PARAMETER xlnx,m00-axi-id-width = 1
 PARAMETER xlnx,m00-axi-ruser-width = 0
 PARAMETER xlnx,m00-axi-target-slave-base-addr = 0x40000000
 PARAMETER xlnx,m00-axi-wuser-width = 0
 PARAMETER xlnx,m01-axi-addr-width = 32
 PARAMETER xlnx,m01-axi-aruser-width = 0
 PARAMETER xlnx,m01-axi-awuser-width = 0
 PARAMETER xlnx,m01-axi-burst-len = 16
 PARAMETER xlnx,m01-axi-buser-width = 0
 PARAMETER xlnx,m01-axi-data-width = 64
 PARAMETER xlnx,m01-axi-id-width = 1
 PARAMETER xlnx,m01-axi-ruser-width = 0
 PARAMETER xlnx,m01-axi-target-slave-base-addr = 0x40000000
 PARAMETER xlnx,m01-axi-wuser-width = 0
 PARAMETER xlnx,m02-axi-addr-width = 32
 PARAMETER xlnx,m02-axi-aruser-width = 0
 PARAMETER xlnx,m02-axi-awuser-width = 0
 PARAMETER xlnx,m02-axi-burst-len = 16
 PARAMETER xlnx,m02-axi-buser-width = 0
 PARAMETER xlnx,m02-axi-data-width = 64
 PARAMETER xlnx,m02-axi-id-width = 1
 PARAMETER xlnx,m02-axi-ruser-width = 0
 PARAMETER xlnx,m02-axi-target-slave-base-addr = 0x40000000
 PARAMETER xlnx,m02-axi-wuser-width = 0
 PARAMETER xlnx,m03-axi-addr-width = 32
 PARAMETER xlnx,m03-axi-aruser-width = 0
 PARAMETER xlnx,m03-axi-awuser-width = 0
 PARAMETER xlnx,m03-axi-burst-len = 16
 PARAMETER xlnx,m03-axi-buser-width = 0
 PARAMETER xlnx,m03-axi-data-width = 64
 PARAMETER xlnx,m03-axi-id-width = 1
 PARAMETER xlnx,m03-axi-ruser-width = 0
 PARAMETER xlnx,m03-axi-target-slave-base-addr = 0x40000000
 PARAMETER xlnx,m03-axi-wuser-width = 0
 PARAMETER xlnx,m04-axi-addr-width = 32
 PARAMETER xlnx,m04-axi-aruser-width = 0
 PARAMETER xlnx,m04-axi-awuser-width = 0
 PARAMETER xlnx,m04-axi-burst-len = 16
 PARAMETER xlnx,m04-axi-buser-width = 0
 PARAMETER xlnx,m04-axi-data-width = 64
 PARAMETER xlnx,m04-axi-id-width = 1
 PARAMETER xlnx,m04-axi-ruser-width = 0
 PARAMETER xlnx,m04-axi-target-slave-base-addr = 0x40000000
 PARAMETER xlnx,m04-axi-wuser-width = 0
 PARAMETER xlnx,s00-axi-addr-width = 18
 PARAMETER xlnx,s00-axi-aruser-width = 16
 PARAMETER xlnx,s00-axi-awuser-width = 16
 PARAMETER xlnx,s00-axi-buser-width = 0
 PARAMETER xlnx,s00-axi-data-width = 32
 PARAMETER xlnx,s00-axi-id-width = 16
 PARAMETER xlnx,s00-axi-ruser-width = 0
 PARAMETER xlnx,s00-axi-wuser-width = 0
 PARAMETER xlnx,slot-num = 30
 PARAMETER xlnx,slv-addr-width = 16
 PARAMETER xlnx,slv-data-width = 32
 PARAMETER xlnx,sync-width = 8
END


