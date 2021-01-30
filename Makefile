
copyfiles:
	cp ./Dockerfile $(SBPATH)/Dockerfile

build: copyfiles
	env SBPATH=$(SBPATH) docker-compose build

run: build
	mkdir -p storage/universe mods
	env SBPATH=$(SBPATH) docker-compose up

saveimage: build
	docker save -o starbound-docker-image.tar starbound_server:latest
