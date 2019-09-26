#!/usr/bin/env bash
set -e
# Cache the plugins
mkdir -p ~/.terraform.d/plugin-cache
export TF_PLUGIN_CACHE_DIR=~/.terraform.d/plugin-cache
export TF_INPUT=0

DIRECTORIES=( \
"{{ cookiecutter.region }}/logging/log-config-bucket" \
"global/profiles/p-rep" \
"global/profiles/citizen" \
"{{ cookiecutter.region }}/network/vpc" \
"{{ cookiecutter.region }}/p-rep/keys" \
"{{ cookiecutter.region }}/p-rep/sg" \
"{{ cookiecutter.region }}/p-rep/ec2" \
"{{ cookiecutter.region }}/citizen/keys" \
"{{ cookiecutter.region }}/citizen/sg" \
"{{ cookiecutter.region }}/citizen/ec2" \
"{{ cookiecutter.region }}/p-rep/ec2-configuration" \
"{{ cookiecutter.region }}/citizen/ec2-configuration" \
)

for i in "${DIRECTORIES[@]}"
do
   terragrunt apply --terragrunt-source-update --terragrunt-non-interactive --auto-approve --terragrunt-working-dir $i
done
