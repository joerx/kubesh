image ?= mt
tag ?= latest

build:
	docker build -t $(image):$(tag) .

run: build
	docker run -it --rm $(image):$(tag)
