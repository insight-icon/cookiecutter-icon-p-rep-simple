account_id = "{{ cookiecutter.account_id }}"
aws_allowed_account_ids = [
  "{{ cookiecutter.account_id }}"]
terraform_state_region = "us-east-1"
terraform_state_bucket = "terraform-states-{{ cookiecutter.account_id }}"

// -------------Keys
local_public_key = "{{ cookiecutter.local_public_key }}"
config_private_key = "{{ cookiecutter.local_private_key }}"

stage = "{{ cookiecutter.environment }}"

corporate_ip = "{{ cookiecutter.corporate_ip }}"
