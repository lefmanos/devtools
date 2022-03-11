
INSTALL_DIR ?= $(HOME)/.local/bin/devtools

TOOLNAMES := $(shell ls ./bin)
INSTALL_BINS ?= $(foreach tool, $(TOOLNAMES), $(INSTALL_DIR)/$(tool))

VPATH = bin
.PHONY: clean install all

all: tools

tools: $(INSTALL_BINS)

$(INSTALL_DIR)%: bin% | $(INSTALL_DIR)
	cp $^ $@

$(INSTALL_DIR):
	mkdir -p $@

clean:
	rm -rf $(INSTALL_DIR)
