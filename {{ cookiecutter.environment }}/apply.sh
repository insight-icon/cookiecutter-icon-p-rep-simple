#!/usr/bin/env bash

# Cache the plugins
mkdir -p ~/.terraform.d/plugin-cache
export TF_PLUGIN_CACHE_DIR=~/.terraform.d/plugin-cache
export TF_INPUT=0

##DIRECTORIES=( \
##"global/profiles/p-rep" \
##"global/profiles/citizen" \
##"global/audit/cloudtrail" \
##"global/audit/s3-cloudtrail" \
##"{{ cookiecutter.region }}/logging/log-config-bucket" \
##"{{ cookiecutter.region }}/p-rep/keys" \
##"{{ cookiecutter.region }}/p-rep/sg" \
##"{{ cookiecutter.region }}/p-rep/ec2" \
##"{{ cookiecutter.region }}/network/vpc" \
##"{{ cookiecutter.region }}/citizen/keys" \
##"{{ cookiecutter.region }}/citizen/sg" \
##"{{ cookiecutter.region }}/citizen/ec2" \
##)
#
#DIRECTORIES=( \
#"global/profiles/p-rep" \
#"global/profiles/citizen" \
#)
#
#for i in "${DIRECTORIES[@]}"
#do
#   terragrunt apply --terragrunt-source-update --terragrunt-non-interactive --auto-approve --terragrunt-working-dir$i
#done

## TODO: Turning into array + loop - doesn't work as well as this does
terragrunt apply-all --terragrunt-source-update --terragrunt-non-interactive --terragrunt-working-dir {{ cookiecutter.region }}/network
terragrunt apply-all --terragrunt-source-update --terragrunt-non-interactive --terragrunt-working-dir {{ cookiecutter.region }}/logging
terragrunt apply-all --terragrunt-source-update --terragrunt-non-interactive --terragrunt-working-dir global
terragrunt apply-all --terragrunt-source-update --terragrunt-non-interactive --terragrunt-working-dir {{ cookiecutter.region }}/citizen
terragrunt apply-all --terragrunt-source-update --terragrunt-non-interactive --terragrunt-working-dir {{ cookiecutter.region }}/p-rep


