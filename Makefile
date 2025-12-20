# main Makefile
include custom.mk
SUBMODULES = droneManager droneDB minio
ENV_FOLDER ?= config/envs/
export ENV_FOLDER

.PHONY: all build start stop clean $(SUBMODULES)

all: build


$(SUBMODULES):
	@echo ""
	@echo "====== Build du module $@ ======"
	$(MAKE) -C $@ build
	@echo ""
	@echo "====== generation des fichier ENV du module  $@ ======"
	./build/scripts/placeHoldersReplacement.sh $@ $(ENV_FOLDER)

build: $(SUBMODULES)

start: build
	@echo ""
	@echo "====== lancement des containers de tout le projet  ======"
	docker compose up -d

stop: 
	@echo ""
	@echo "====== arret de tout les containers DMS  ======"
	docker compose down

clean:
	@for module in $(SUBMODULES); do \
		echo ""; \
		echo "====== Clean du module $$module ======"; \
		$(MAKE) -C $$module clean; \
	done

proper: clean
	@echo ""
	@echo "====== Suppression des containers et volumes Docker ======"
	docker compose down -v --remove-orphans

