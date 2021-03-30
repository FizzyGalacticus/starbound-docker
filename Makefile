
copyfiles:
	cp ./Dockerfile "$(SBPATH)"/Dockerfile

build: copyfiles
	env SBPATH="$(SBPATH)" docker-compose build

run: build
	mkdir -p storage/universe mods
	env SBPATH="$(SBPATH)" docker-compose up starbound

run-fu: build
	mkdir -p fu_storage/universe fu_mods
	env SBPATH="$(SBPATH)" docker-compose up starbound-fu

saveimage: build
	docker save -o starbound-docker-image.tar starbound_server:latest
