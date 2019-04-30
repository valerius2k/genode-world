TARGET := supertux

SUPERTUX_DIR := $(call select_from_ports,supertux)/src/app/supertux

SRC_CC := $(notdir $(wildcard $(SUPERTUX_DIR)/src/*.cpp))
SRC_CC += dummy.cc

vpath %.cpp $(SUPERTUX_DIR)/src

INC_DIR += $(SUPERTUX_DIR)/src

LIBS += stdcxx base libc libm
LIBS += sdl sdlmain sdl_image sdl_mixer zlib

#$(TARGET): supertux_data.tar
#supertux_data.tar:
#	$(VERBOSE)cd $(SUPERTUX_DIR); tar cf $(PWD)/bin/$@ data

CC_OPT += -DNOOPENGL -DDATA_PREFIX='"/data"' -fpermissive

CC_CXX_OPT_STD = -std=gnu++98

CC_CXX_WARN_STRICT =
