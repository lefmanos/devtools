
DEVTOOLS := $(wildcard ./bin/*)
TARGET_DIR ?= $(CURDIR)/bin
LINK_NAME ?= $(HOME)/.local/bin/devtools
install := $(LINK_NAME)


.PHONY: clean install all

all: .installed

.installed: $(DEVTOOLS)
	touch .installed
	ln -sf $(TARGET_DIR) $(LINK_NAME)

clean:
	rm .installed
	rm $(LINK_NAME)
