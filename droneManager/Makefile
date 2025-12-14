MODULE_NAME=drone_manager
IMAGE_NAME=$(MODULE_NAME):latest

.PHONY: build docker

build:
	@echo "===> Building Docker image: $(MODULE_NAME)"
	docker build -t $(IMAGE_NAME) .

