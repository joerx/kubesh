repo ?= $(shell git remote get-url origin | awk -F ':' '{ print $$2 }' | sed 's/\.git//')
tag ?= latest
host ?= quay.io
image = $(host)/$(repo):$(tag)

build:
	docker build -t $(image) .

push: build
	docker push $(image)

run: build
	docker run -it --rm $(image)

install:
	cp ./kubeshell.sh ~/.kubeshell
	@echo "Please add 'source ~/.kubeshell' to your ~/.bash_profile"
