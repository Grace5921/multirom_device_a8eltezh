$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Use high-density artwork where available
PRODUCT_LOCALES += xdpi
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xdpi

# Insecure ADBD
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	persist.service.adb.enable=0

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
    e2fsck \
    setup_fs
	
# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_COPY_FILES += \
device/samsung/a8eltezh/recovery/sbin/charge_recovery:/recovery/root/sbin/charge_recovery \
device/samsung/a8eltezh/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/samsung/a8eltezh/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
device/samsung/a8eltezh/recovery/sbin/linker:/recovery/root/sbin/linker \
device/samsung/a8eltezh/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh \
device/samsung/a8eltezh/recovery/tp/1191601.img:root/tp/1191601.img \
