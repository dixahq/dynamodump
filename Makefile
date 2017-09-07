.PHONY:	build push

IMAGE = dynamodump
TAG = 0.2
ROOT = 038101219289.dkr.ecr.eu-west-1.amazonaws.com

build:
	docker build -t $(ROOT)/$(IMAGE):$(TAG) .

push: build
	docker push $(ROOT)/$(IMAGE):$(TAG)

latest: build
	docker tag $(ROOT)/$(IMAGE):$(TAG) $(ROOT)/$(IMAGE):latest
	docker push $(ROOT)/$(IMAGE):latest
