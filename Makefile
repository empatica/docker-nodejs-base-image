IMAGE = empatica/nodejs-base-image
VERSION = $(shell cat VERSION)

.PHONY: build push release

default: release

build:
	docker build -t $(IMAGE):$(VERSION) .

push:
	docker push $(IMAGE):$(VERSION)

release: build push
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):latest
	docker push $(IMAGE):latest
