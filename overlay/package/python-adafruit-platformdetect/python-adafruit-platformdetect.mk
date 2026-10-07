################################################################################
#
# python-adafruit-platformdetect
#
################################################################################

PYTHON_ADAFRUIT_PLATFORMDETECT_VERSION = custom
PYTHON_ADAFRUIT_PLATFORMDETECT_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/adafruit-platformdetect
PYTHON_ADAFRUIT_PLATFORMDETECT_SITE_METHOD = local

PYTHON_ADAFRUIT_PLATFORMDETECT_SETUP_TYPE = setuptools

PYTHON_ADAFRUIT_PLATFORMDETECT_DEPENDENCIES = \
	host-python-setuptools-scm

PYTHON_ADAFRUIT_PLATFORMDETECT_LICENSE = MIT

$(eval $(python-package))
