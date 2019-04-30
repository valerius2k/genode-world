MIRROR_FROM_PORT_AND_REP_DIR := src/app/ltris

content: ltris_data.tar

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/ltris)/src/app/ltris

ltris_data.tar:
	$(VERBOSE)tar cf $@ -C $(PORT_DIR)/src/ gfx sounds figures
