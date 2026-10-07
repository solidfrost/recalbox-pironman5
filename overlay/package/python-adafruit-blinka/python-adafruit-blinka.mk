################################################################################
#
# python-adafruit-blinka
#
################################################################################

PYTHON_ADAFRUIT_BLINKA_VERSION = custom
PYTHON_ADAFRUIT_BLINKA_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/adafruit-blinka
PYTHON_ADAFRUIT_BLINKA_SITE_METHOD = local

PYTHON_ADAFRUIT_BLINKA_SETUP_TYPE = setuptools

PYTHON_ADAFRUIT_BLINKA_DEPENDENCIES = \
	host-python-setuptools-scm \
	python-adafruit-platformdetect \
	python-adafruit-pureio \
	python-sysv-ipc \
	python-lgpio \
	python-rpi-lgpio \
	python-spidev

PYTHON_ADAFRUIT_BLINKA_ENV = \
	SETUPTOOLS_SCM_PRETEND_VERSION=9.2.0

PYTHON_ADAFRUIT_BLINKA_LICENSE = MIT

$(eval $(python-package))
