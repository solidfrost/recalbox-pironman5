################################################################################
#
# recalbox-pironman5
#
################################################################################

RECALBOX_PIRONMAN5_VERSION = custom
RECALBOX_PIRONMAN5_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/pironman5
RECALBOX_PIRONMAN5_SITE_METHOD = local

RECALBOX_PIRONMAN5_LICENSE = GPL-2.0
RECALBOX_PIRONMAN5_LICENSE_FILES = LICENSE

RECALBOX_PIRONMAN5_SETUP_TYPE = setuptools

RECALBOX_PIRONMAN5_DEPENDENCIES = \
	util-linux \
	python-argcomplete \
	python-sf-rpi-status \
	python-pm-auto \
	python-evdev \
	python-pillow \
	python-smbus2 \
	python-numpy \
	python-rpi-lgpio \
	python-adafruit-platformdetect \
	python-adafruit-pureio \
	python-sysv-ipc \
	python-adafruit-blinka \
	python-spidev \
        python-adafruit-circuitpython-pixelbuf \
        python-adafruit-circuitpython-busdevice \
	python-adafruit-circuitpython-neopixel-spi

define RECALBOX_PIRONMAN5_INSTALL_CONFIG
	$(INSTALL) -D -m 0755 \
		$(BR2_EXTERNAL_RECALBOX_PATH)/package/recalbox-pironman5/pironman5-config.sh \
		$(TARGET_DIR)/usr/bin/pironman5-config
endef

RECALBOX_PIRONMAN5_POST_INSTALL_TARGET_HOOKS += \
	RECALBOX_PIRONMAN5_INSTALL_CONFIG

define RECALBOX_PIRONMAN5_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 \
		$(BR2_EXTERNAL_RECALBOX_PATH)/package/recalbox-pironman5/S35pironman5 \
		$(TARGET_DIR)/etc/init.d/S35pironman5
endef

define RECALBOX_PIRONMAN5_INSTALL_LSBLK
	$(INSTALL) -D -m 0755 \
		$(BUILD_DIR)/util-linux-$(UTIL_LINUX_VERSION)/lsblk \
		$(TARGET_DIR)/usr/bin/lsblk
endef

RECALBOX_PIRONMAN5_POST_INSTALL_TARGET_HOOKS += \
	RECALBOX_PIRONMAN5_INSTALL_LSBLK

$(eval $(python-package))
