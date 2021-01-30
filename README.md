# Starbound-Docker

This repo contains the necessary definitions for running a Starbound server in Docker.

## Requirements

* A valid Linux Starbound installation
* make
* docker + docker-compose in your `PATH`

## How it works

This simply copies the necessary Starbound files into a Docker image.

## How to run

Simply clone this repo:

```sh
git clone https://github.com/FizzyGalacticus/starbound-docker
```

... and from the repo directory, run:

```sh
make SBPATH=<path/to/your/Starbound/installation> run
```

This will create the image and start the container.

## Saving the Docker image

If you would like to save the image directly for copying elsewhere, you can run:

```sh
make SBPATH=<path/to/your/Starbound/installation> saveimage
```

## configuration

You can customize the server config settings by modifying the [starbound_server.config](./storage/starbound_server.config) file and re-starting the server using the command above.

You can also install any desired mods directly into the [mods directory](./mods).
