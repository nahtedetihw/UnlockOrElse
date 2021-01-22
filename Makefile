TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

DEBUG = 0
FINALPACKAGE = 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UnlockOrElse

UnlockOrElse_FILES = Tweak.xm
UnlockOrElse_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
