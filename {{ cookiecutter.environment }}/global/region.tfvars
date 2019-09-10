
// This is only for s3 buckets taking globally scoped resources like cloudtrail
region = "{{ cookiecutter.region }}"

tags = {
  Environment = "prod"
}
