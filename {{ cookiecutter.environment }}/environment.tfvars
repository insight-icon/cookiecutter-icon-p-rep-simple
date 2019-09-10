
//TODO this has to be dealt with consistently across all modules as the community seems to be using list maps, not maps.
// This might be a bug in terragrunt.

//tags = {
//  Environment = "prod"
//}
//
//log_bucket_region = "us-east-1"
//environment = "prod"

log_bucket_region = "us-east-1"
environment = "{{ cookiecutter.EMVIRONMENT }}"
node_subdomain = "{{ cookiecutter.EMVIRONMENT }}"
stage = "{{ cookiecutter.EMVIRONMENT }}"

