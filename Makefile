obj-m := led.o
KDIR:= /lib/modules/$(shell uname -r)/build.
PWD:= $(shell pwd).
default:
	$(MAKE) -C $(KDIR) M = $(PWD)modules

prepare:
	$(MAKE) -c $(KDIR) M = $(PWD)modules_prepare

install:
	$(MAKE) -C $(KDIR) M = $(PWD)modules_install
clean:
	$(MAKE) -C $(KDIR) M = $(PWD)clean
