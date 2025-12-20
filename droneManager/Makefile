MODULE_NAME=drone_manager
IMAGE_NAME=$(MODULE_NAME):latest

.PHONY: build clean

build:
	@echo "===> Building Docker image: $(MODULE_NAME)"
	docker build -t $(IMAGE_NAME) .

clean:
	@echo "===> cleaning the configuration ENV files: $(MODULE_NAME)"
	rm -f $(ENV_FOLDER)*.env; \
	rm -f $(ENV_FOLDER)*.env.secrets

