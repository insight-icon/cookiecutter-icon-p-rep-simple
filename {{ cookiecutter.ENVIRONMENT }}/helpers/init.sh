#!/usr/bin/env bash
ACCOUNT_ID=$1
REMOTE_STATE_REGION=$2
LOCAL_KEY_FILE=$3
LOCAL_PRIVATE_KEY_FILE=$4
ROOT_DOMAIN_NAME=$4
SUBDOMAIN=$5
CORPORATE_IP=$6

cat<<EOF > ./account.tfvars
account_id = "$ACCOUNT_ID"
aws_allowed_account_ids = [
  "677177650632"]
aws_allowed_account_ids = ["$ACCOUNT_ID"]
terraform_state_bucket = "terraform-states-$ACCOUNT_ID"

terraform_state_region = "$REMOTE_STATE_REGION"

local_public_key  = "$LOCAL_PUBLIC_KEY_FILE"
private_key = "$LOCAL_PRIVATE_KEY_FILE" // Only used for ansible configuration steps https://github.com/radekg/terraform-provisioner-ansible

root_domain_name = "$ROOT_DOMAIN_NAME"
subdomain = "$SUBDOMAIN"
domain_name = "$SUBDOMAIN.$ROOT_DOMAIN_NAME"

corporate_ip = "$CORPORATE_IP"

corporate_ip = "24.5.110.74"
allowed_cidr = [
  "24.5.110.74/32"]

zone_id = "Z1VMWQBM1ZS2IX"

EOF
