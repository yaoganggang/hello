ifneq ($(KERNELRELEASE),)

	obj-m :=hello.o
else

	KDIR :=/lib/modules/4.15.0-74-generic/build

	PWD := $(shell pwd)

modules:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

endif

clean:
	rm -rf *.o *~ .depend .* .
