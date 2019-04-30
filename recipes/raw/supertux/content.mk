MIRROR_FROM_PORT_AND_REP_DIR := src/app/supertux

content: supertux_data.tar

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/supertux)/src/app/supertux

supertux_data.tar:
	$(VERBOSE)tar cf $@ -C $(PORT_DIR)/ data
