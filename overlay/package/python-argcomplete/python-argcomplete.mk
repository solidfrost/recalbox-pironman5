################################################################################
#
# python-argcomplete
#
################################################################################

PYTHON_ARGCOMPLETE_VERSION = 3.6.2
PYTHON_ARGCOMPLETE_SOURCE = argcomplete-$(PYTHON_ARGCOMPLETE_VERSION).tar.gz
PYTHON_ARGCOMPLETE_SITE = https://files.pythonhosted.org/packages/source/a/argcomplete

PYTHON_ARGCOMPLETE_SETUP_TYPE = pep517
PYTHON_ARGCOMPLETE_DEPENDENCIES = \
	host-python-hatchling \
	host-python-hatch-vcs

PYTHON_ARGCOMPLETE_LICENSE = Apache-2.0
PYTHON_ARGCOMPLETE_LICENSE_FILES = LICENSE.rst

$(eval $(python-package))
