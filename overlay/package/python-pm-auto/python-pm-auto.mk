################################################################################
#
# python-pm-auto
#
################################################################################

PYTHON_PM_AUTO_VERSION = custom
PYTHON_PM_AUTO_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/pm_auto
PYTHON_PM_AUTO_SITE_METHOD = local

PYTHON_PM_AUTO_SETUP_TYPE = setuptools

PYTHON_PM_AUTO_LICENSE = GPL-2.0

PYTHON_PM_AUTO_DEPENDENCIES = \
	python-sf-rpi-status \
	python-evdev \
	python-pillow \
	python-smbus2 \
	python-numpy \
	python-rpi-lgpio \
	python-adafruit-blinka \
	python-adafruit-circuitpython-neopixel-spi

$(eval $(python-package))
