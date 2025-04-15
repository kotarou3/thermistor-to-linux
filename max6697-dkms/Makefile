SHELL = bash
LINUX_SOURCE_TAR = $(shell ls -1t /usr/src/linux-source-*.tar.xz | head -n1)
KERNELRELEASE ?= $(shell uname -r)

$(KERNELRELEASE): linux-source
	cp /boot/config-$(KERNELRELEASE) linux-source/.config
	cp /usr/src/linux-headers-$(KERNELRELEASE)/Module.symvers linux-source/Module.symvers
	sed -i -e 's/^# CONFIG_SENSORS_MAX6697 is not set$$/CONFIG_SENSORS_MAX6697=m/' linux-source/.config
	$(MAKE) -C linux-source oldconfig <&-
	$(MAKE) -C linux-source modules_prepare
	$(MAKE) -C linux-source M=drivers/hwmon

linux-source: $(LINUX_SOURCE_TAR)
	rm -rf linux-source
	mkdir linux-source
	touch -md 1970-01-01Z linux-source
	tar xaf $(LINUX_SOURCE_TAR) --strip-components=1 -C linux-source
	touch -mr $(LINUX_SOURCE_TAR) linux-source

clean:
	[ -e linux-source ] && $(MAKE) -C linux-source clean
