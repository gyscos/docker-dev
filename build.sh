#!/bin/bash

for TARGET in "base-dev" "rust-dev" "go-dev"
do
	docker build -t $TARGET $TARGET
done
