MODULE_NAME=minio
IMAGE_NAME=$(MODULE_NAME):latest

.PHONY: build

build:
	@echo "===> Building Docker image: $(MODULE_NAME)"
	docker build -t $(IMAGE_NAME) .

