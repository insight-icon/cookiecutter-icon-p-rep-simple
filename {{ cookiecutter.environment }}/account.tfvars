account_id = "{{ cookiecutter.ACCOUNT_ID }}"
aws_allowed_account_ids = [
  "{{ cookiecutter.ACCOUNT_ID }}"]
terraform_state_region = "us-east-1"
terraform_state_bucket = "terraform-states-{{ cookiecutter.ACCOUNT_ID }}"

local_public_key = "{{ cookiecutter.LOCAL_KEY_FILE }}"

root_domain_name = "{{ cookiecutter.ROOT_DOMAIN_NAME }}"

subdomain = "{{ cookiecutter.ACCOUNT_ID }}"

domain_name = "{{ cookiecutter.ACCOUNT_ID }}"

stage = "{{ cookiecutter.environment }}"

corporate_ip = "{{ cookiecutter.CORPORATE_IP }}"
allowed_cidr = [
  "{{ cookiecutter.CORPORATE_IP }}"]

zone_id = "{{ cookiecutter.ZONE_ID }}"
