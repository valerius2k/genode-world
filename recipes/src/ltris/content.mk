MIRROR_FROM_PORT_AND_REP_DIR := src/app/ltris

content: $(MIRROR_FROM_PORT_AND_REP_DIR) LICENSE

PORT_DIR := $(call port_dir,$(REP_DIR)/ports/ltris)

$(MIRROR_FROM_PORT_AND_REP_DIR):
	mkdir -p $(dir $@)
	cp -r $(PORT_DIR)/$@ $(dir $@)
	$(mirror_from_rep_dir)

LICENSE:
	cp $(PORT_DIR)/src/app/ltris/COPYING $@
