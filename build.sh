#!/usr/bin/env zsh

for TARGET in "base-dev" "rust-dev"
docker build -t $TARGET $TARGET
