#!/usr/bin/env bash

for d in {{ cookiecutter.region }}/*/*/ ; do
    find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \;
done
