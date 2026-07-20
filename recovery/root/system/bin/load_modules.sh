#!/sbin/sh

load_panel()
{
	insmod /lib/modules/adaptive-ts.ko
	insmod /lib/modules/gpio.ko
	insmod /lib/modules/gpio-sprd.ko
	insmod /lib/modules/focaltech_ft8756_spi_ts.ko
        insmod /lib/modules/sc27xx-vibra.ko
        insmod /lib/modules/sprd-sc27xx-spi.ko
        insmod /lib/modules/sc27xx-adc.ko
	insmod /lib/modules/goodix_fp.ko
	insmod /lib/modules/fpsensor_fp.ko
	insmod /lib/modules/fortsense_fp.ko
	insmod /lib/modules/spi-sprd.ko
	insmod /lib/modules/spi-sprd-adi.ko
	insmod /lib/modules/spipe.ko
}


load_panel
wait 1
setprop modules.loaded 1
exit 0
