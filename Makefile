.DEFAULT_GOAL := build

BINARY_NAME := getapp

.PHONY: build run clean

build:
	@echo "Building the project"
	go build -o ${BINARY_NAME} ./cmd/main

run: build
	# go run ./cmd/main
	./${BINARY_NAME}


clean:
	go clean
	rm -f ${BINARY_NAME}
