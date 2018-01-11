image ?= $(shell basename $${PWD})
tag ?= latest

build:
	docker build -t $(image):$(tag) .

run: build
	docker run -it --rm $(image):$(tag)

install:
	cp ./kubeshell.sh ~/.kubeshell
	@echo "Please add 'source ~/.kubeshell' to your ~/.bash_profile"
