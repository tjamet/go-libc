#!/bin/bash -e
docker build -t glide glide
for directory in simple viper; do
    if [ -e ${directory}/glide.yaml ]; then
        docker run --rm -v $PWD/${directory}:/go/src/github.com/tjamet/go-libc -w /go/src/github.com/tjamet/go-libc glide install
    fi
    docker run --rm -v $PWD/${directory}:/go/src/github.com/tjamet/go-libc -w /go/src/github.com/tjamet/go-libc golang:1.8 go build -o myTest
    docker run --rm -v $PWD/${directory}/myTest:/myTest debian:8 /myTest debian
    docker run --rm -v $PWD/${directory}/myTest:/myTest alpine:3.5 /myTest alpine
done
