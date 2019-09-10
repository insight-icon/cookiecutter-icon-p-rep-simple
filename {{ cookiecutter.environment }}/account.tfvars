account_id = "{{ cookiecutter.ACCOUNT_ID }}"
aws_allowed_account_ids = [
  "{{ cookiecutter.ACCOUNT_ID }}"]
terraform_state_region = "{{ cookiecutter.REMOTE_STATE_REGION }}"
terraform_state_bucket = "terraform-states-{{ cookiecutter.ACCOUNT_ID }}"

local_public_key = "{{ cookiecutter.LOCAL_KEY_FILE }}"
private_key = "{{ cookiecutter.LOCAL_PRIVATE_KEY_FILE }}"

root_domain_name = "{{ cookiecutter.ROOT_DOMAIN_NAME }}"

subdomain = "{{ cookiecutter.ACCOUNT_ID }}"

domain_name = "{{ cookiecutter.ACCOUNT_ID }}"

stage = "{{ cookiecutter.ENVIRONMENT }}"

corporate_ip = "{{ cookiecutter.CORPORATE_IP }}"
allowed_cidr = [
  "{{ cookiecutter.CORPORATE_IP }}"]

zone_id = "{{ cookiecutter.ZONE_ID }}"
