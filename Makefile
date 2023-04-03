IMAGE_NAME = "docker-debian-emacs"
IMAGE_TAG = "0.1.0"
IMAGE = $(IMAGE_NAME):$(IMAGE_TAG)

build: Dockerfile
	docker build . --tag $(IMAGE)
	docker tag $(IMAGE) $(IMAGE_NAME):latest
