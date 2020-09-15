#!/bin/bash

docker kill zephyr-builder-0-11-4
docker container rm zephyr-builder-0-11-4

docker run --privileged -dt --user=1000:1000 \
	-v "$(pwd)/zephyrproject":/workdir \
	-v /dev/bus/usb:/dev/bus/usb:z \
	--device=/dev/ttyACM0 \
	--name=zephyr-builder-0-11-4 zephyr-docker:latest \
	bash

echo "docker started detached, use docker exec ... bash for interactive session"
