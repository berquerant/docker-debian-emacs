IMAGE_NAME = "docker-debian-emacs"
IMAGE_TAG = "0.3.0"
IMAGE = $(IMAGE_NAME):$(IMAGE_TAG)

build: Dockerfile
	docker build . --tag $(IMAGE)
	docker tag $(IMAGE) $(IMAGE_NAME):latest

.PHONY: docker-hadolint-debian
docker-hadolint-debian:
	docker run --rm -i -v $(PWD)/.hadolint.yml:/.config/hadolint.yml hadolint/hadolint:v2.12.0-debian hadolint --config /.config/hadolint.yml - < Dockerfile
