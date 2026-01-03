MODULE_NAME=droneManager
IMAGE_NAME=drone_manager:latest

.PHONY: build clean

build:
	@echo "===> Building Docker image: $(IMAGE_NAME)"
	docker build -t $(IMAGE_NAME) .

clean:
	@(rm -vf $(ENV_FOLDER)*.env $(ENV_FOLDER)*.env.secrets | sed "s|removed '|removed '$(MODULE_NAME)/|") || true

