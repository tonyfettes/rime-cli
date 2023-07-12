PROJECT_NAME = rime-cli
PROJECT_VERSION = 0.0.0

# NixOS
ifeq ($(wildcard /run/current-system/nixos-version),)
	RIME_SHARED_DATA_DIR = /run/current-system/sw/share/rime-data
else
	RIME_SHARED_DATA_DIR = /usr/share/rime-data
endif
ifdef out
	prefix = $(out)
else
	prefix = /usr
endif
