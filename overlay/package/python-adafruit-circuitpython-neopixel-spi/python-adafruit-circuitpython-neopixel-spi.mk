################################################################################
#
# python-adafruit-circuitpython-neopixel-spi
#
################################################################################

PYTHON_ADAFRUIT_CIRCUITPYTHON_NEOPIXEL_SPI_VERSION = custom
PYTHON_ADAFRUIT_CIRCUITPYTHON_NEOPIXEL_SPI_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/adafruit-neopixel-spi
PYTHON_ADAFRUIT_CIRCUITPYTHON_NEOPIXEL_SPI_SITE_METHOD = local

PYTHON_ADAFRUIT_CIRCUITPYTHON_NEOPIXEL_SPI_SETUP_TYPE = setuptools

PYTHON_ADAFRUIT_CIRCUITPYTHON_NEOPIXEL_SPI_DEPENDENCIES = \
	python-adafruit-blinka \
	python-adafruit-circuitpython-pixelbuf \
        python-adafruit-circuitpython-busdevice
PYTHON_ADAFRUIT_CIRCUITPYTHON_NEOPIXEL_SPI_LICENSE = MIT

$(eval $(python-package))
