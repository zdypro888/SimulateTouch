include ${THEOS}/makefiles/common.mk

export ARCHS = arm64
export TARGET = iphone:clang:11.2:9.3
TWEAK_NAME = SimulateTouch
SimulateTouch_FILES = SimulateTouch.mm
SimulateTouch_PRIVATE_FRAMEWORKS = GraphicsServices IOKit
SimulateTouch_LDFLAGS = -lsubstrate -lrocketbootstrap

# LIBRARY_NAME = libsimulatetouch
# libsimulatetouch_FILES = STLibrary.mm
# libsimulatetouch_LDFLAGS = -lrocketbootstrap
# libsimulatetouch_INSTALL_PATH = ${THEOS}/lib
# libsimulatetouch_FRAMEWORKS = UIKit CoreGraphics
# libsimulatetouch_LINKAGE_TYPE = {dynamic,static}

TOOL_NAME = stouch
stouch_FILES = main.mm
stouch_FRAMEWORKS = UIKit
stouch_INSTALL_PATH = /usr/bin/
stouch_LDFLAGS = -lsimulatetouch

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/library.mk
include $(THEOS_MAKE_PATH)/tool.mk
