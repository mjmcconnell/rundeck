DOCKER_IMAGE_FILE=./docker/Dockerfile
DOCKER_IMAGE_REPO=ghcr.io/mjmcconnell/rundeck
DOCKER_IMAGE_TAG=latest
DOCKER_IMAGE_CONTEXT=.

.PHONY: help
help:		## List available cmds.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

.PHONY: up
up:		## Start the local environment (see docker-compose.yaml)
	docker-compose up

.PHONY: down
down:		## Stop the local environment
	docker-compose down

docker.build: 	## Build docker image
	docker build \
		-f $(DOCKER_IMAGE_FILE) \
		-t $(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_TAG) \
		$(DOCKER_IMAGE_CONTEXT)

docker.push: 	## Push locally built docker image to gitlab
	docker push $(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_TAG)

docker.shell: 	## Start a new docker container and exec into a bash terminal
	docker run --rm -it --entrypoint /bin/bash \
		$(DOCKER_IMAGE_REPO):$(DOCKER_IMAGE_TAG)
