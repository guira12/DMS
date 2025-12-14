# main Makefile

SUBMODULES = droneManager droneDB minio

.PHONY: all build $(SUBMODULES)

all: build

build: $(SUBMODULES)

$(SUBMODULES):
	@echo ""
	@echo "====== Build du module $@ ======"
	$(MAKE) -C $@ build

