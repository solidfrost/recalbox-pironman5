################################################################################
#
# python-adafruit-pureio
#
################################################################################

PYTHON_ADAFRUIT_PUREIO_VERSION = custom
PYTHON_ADAFRUIT_PUREIO_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/adafruit-pureio
PYTHON_ADAFRUIT_PUREIO_SITE_METHOD = local

PYTHON_ADAFRUIT_PUREIO_SETUP_TYPE = setuptools

PYTHON_ADAFRUIT_PUREIO_DEPENDENCIES = \
	host-python-setuptools-scm

PYTHON_ADAFRUIT_PUREIO_LICENSE = MIT

$(eval $(python-package))
