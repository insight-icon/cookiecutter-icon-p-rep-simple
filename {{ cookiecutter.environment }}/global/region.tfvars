// This is only for s3 buckets taking globally scoped resources like cloudtrail
region = "{{ cookiecutter.region }}"

//This is only for the provider
aws_region = "{{ cookiecutter.region }}"
tags = {
  Environment = "prod"
}
