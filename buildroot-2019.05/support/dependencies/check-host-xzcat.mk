# XZCAT is taken from BR2_XZCAT (defaults to 'xzcat') (see Makefile)
# If it is not present, build our own host-xzcat

ifeq (,$(call suitable-host-package,xzcat,$(XZCAT)))
BR2_XZCAT_HOST_DEPENDENCY = host-xz
EXTRACTOR_DEPENDENCY_PRECHECKED_EXTENSIONS += .xz .lzma
XZCAT = $(HOST_DIR)/bin/xzcat
endif
