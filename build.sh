#!/bin/bash
export image_name=zephyr-docker

docker rm $image_name
docker build -t $image_name .
