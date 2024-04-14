extra_symbols := $(abspath $(O)/../vendor/mediatek/kernel_modules/connectivity/common/Module.symvers)
extra_symbols += $(abspath $(O)/../vendor/mediatek/kernel_modules/connectivity/connfem/Module.symvers)
extra_symbols += $(abspath $(O)/../vendor/mediatek/kernel_modules/connectivity/conninfra//Module.symvers)
extra_symbols += $(abspath $(O)/../vendor/mediatek/kernel_modules/connectivity/wlan/adaptor/Module.symvers)
extra_symbols += $(abspath $(O)/../vendor/mediatek/kernel_modules/connectivity/wlan/core/gen4m/Module.symvers)

$(info [wlan] WLAN_BUILD_COMMON=$(WLAN_BUILD_COMMON))

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) modules $(KBUILD_OPTIONS) KBUILD_EXTRA_SYMBOLS="$(extra_symbols)"

modules_install:
	$(MAKE) M=$(M) -C $(KERNEL_SRC) modules_install

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) clean
