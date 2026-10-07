################################################################################
#
# python-adafruit-circuitpython-pixelbuf
#
################################################################################

PYTHON_ADAFRUIT_CIRCUITPYTHON_PIXELBUF_VERSION = custom
PYTHON_ADAFRUIT_CIRCUITPYTHON_PIXELBUF_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/adafruit-circuitpython-pixelbuf
PYTHON_ADAFRUIT_CIRCUITPYTHON_PIXELBUF_SITE_METHOD = local

PYTHON_ADAFRUIT_CIRCUITPYTHON_PIXELBUF_SETUP_TYPE = setuptools

PYTHON_ADAFRUIT_CIRCUITPYTHON_PIXELBUF_DEPENDENCIES = \
	host-python-setuptools-scm

PYTHON_ADAFRUIT_CIRCUITPYTHON_PIXELBUF_ENV = \
	SETUPTOOLS_SCM_PRETEND_VERSION=0.0.0

PYTHON_ADAFRUIT_CIRCUITPYTHON_PIXELBUF_LICENSE = MIT

$(eval $(python-package))
