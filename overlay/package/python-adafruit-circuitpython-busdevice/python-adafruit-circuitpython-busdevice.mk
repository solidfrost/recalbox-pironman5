################################################################################
#
# python-adafruit-circuitpython-busdevice
#
################################################################################

PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_VERSION = custom
PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/adafruit-circuitpython-busdevice
PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_SITE_METHOD = local

PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_SETUP_TYPE = setuptools

PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_DEPENDENCIES = \
	host-python-setuptools-scm \
	python-adafruit-blinka

PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_ENV = \
	SETUPTOOLS_SCM_PRETEND_VERSION=0.0.0

PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_LICENSE = MIT

$(eval $(python-package))
