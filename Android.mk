ifeq ($(BOARD_HAVE_BLUETOOTH_BCM),true)

LOCAL_PATH:= $(call my-dir)

#
# brcm_patchram_plus.c
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := brcm_patchram_plus.c

LOCAL_MODULE := brcm_patchram_plus

LOCAL_SHARED_LIBRARIES := libcutils liblog \
			libbluetooth \
			libbluetoothd \
			libbluedroid

LOCAL_C_INCLUDES := \
        system/bluetooth/bluez-clean-headers

LOCAL_CFLAGS := \
	-DANDROID

ifeq ($(TARGET_BOARD_HARDWARE),rk29board)
LOCAL_CFLAGS += -DREADEXTRA
endif

include $(BUILD_EXECUTABLE)

endif
