################################################################################
#
# python-sysv-ipc
#
################################################################################

PYTHON_SYSV_IPC_VERSION = 1.1.0
PYTHON_SYSV_IPC_SOURCE = sysv_ipc-$(PYTHON_SYSV_IPC_VERSION).tar.gz
PYTHON_SYSV_IPC_SITE = https://files.pythonhosted.org/packages/source/s/sysv_ipc

PYTHON_SYSV_IPC_SETUP_TYPE = setuptools

PYTHON_SYSV_IPC_LICENSE = BSD-3-Clause

$(eval $(python-package))
