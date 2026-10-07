################################################################################
#
# python-sf-rpi-status
#
################################################################################

PYTHON_SF_RPI_STATUS_VERSION = custom
PYTHON_SF_RPI_STATUS_SITE = $(BR2_EXTERNAL_RECALBOX_PATH)/projects/sf_rpi_status
PYTHON_SF_RPI_STATUS_SITE_METHOD = local

PYTHON_SF_RPI_STATUS_SETUP_TYPE = setuptools

PYTHON_SF_RPI_STATUS_LICENSE = GPL-2.0

PYTHON_SF_RPI_STATUS_DEPENDENCIES = \
	python-requests \
	python-psutil \
	python-pyudev

$(eval $(python-package))
