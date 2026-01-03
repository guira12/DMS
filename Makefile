# ============================================================
# Main Makefile
# ============================================================

include custom.mk

# ------------------------------------------------------------
# Configuration
# ------------------------------------------------------------

# List of project submodules
SUBMODULES := droneManager droneDB minio

# Environment files folder
ENV_FOLDER ?= config/envs/
export ENV_FOLDER

# Flags passed to sub-make calls
# Default: silent (-s)
FLAGS ?= -s

.PHONY: \
	all build start stop clean proper \
	$(SUBMODULES) \
	build-% \
	clean-%
# ------------------------------------------------------------
# Helper macro
# ------------------------------------------------------------

define run_module
	@echo ""
	@echo "==> $1 for module $2."
	@$(MAKE) $(FLAGS) -C $2 $3
endef

# ------------------------------------------------------------
# Default target
# ------------------------------------------------------------

all: build

# ------------------------------------------------------------
# Build targets
# ------------------------------------------------------------

build: $(addprefix build-,$(SUBMODULES))

build-%:
	$(call run_module,Build,$*,build)
	@echo "====== Generating ENV files for module $* ======"
	./build/scripts/placeHoldersReplacement.sh $* $(ENV_FOLDER)

# ------------------------------------------------------------
# Docker targets
# ------------------------------------------------------------

start: build
	@echo ""
	@echo "====== Starting all project containers ======"
	docker compose up -d

stop:
	@echo ""
	@echo "====== Stopping all DMS containers ======"
	docker compose down

# ------------------------------------------------------------
# Clean targets
# ------------------------------------------------------------

clean: $(addprefix clean-,$(SUBMODULES))
	@echo ""
	@echo "====== ENV files cleaned ======"

clean-%:
	$(call run_module,Clean,$*,clean)

# ------------------------------------------------------------
# Full cleanup
# ------------------------------------------------------------

proper: clean
	@echo ""
	@echo "====== Removing Docker containers, orphans and volumes ======"
	docker compose down -v --remove-orphans

