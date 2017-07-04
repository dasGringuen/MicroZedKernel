DTS_FILE=system-top.dts
DTB_FILE=system.dtb
dtc -I dts -O dtb -o ${DTB_FILE} ${DTS_FILE}
