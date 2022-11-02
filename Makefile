all: push

build:
	@echo ">> building docker image"
	docker build -t runzhliu/k8s-etcdkeeper:latest .

push: build
	@echo ">> pushing docker image"
	docker push runzhliu/k8s-etcdkeeper:latest

.PHONY: all build push
