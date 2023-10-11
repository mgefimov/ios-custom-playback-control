TARGET := iphone:clang:13.7:13.7
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = custom-playback-control

#custom-playback-control_FRAMEWORKS = AVKit
custom-playback-control_FILES = Tweak.x
custom-playback-control_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
