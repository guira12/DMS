# main Makefile
include custom.mk
SUBMODULES = droneManager droneDB minio
ENV_FOLDER ?= config/envs/ 

.PHONY: all build $(SUBMODULES)

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
