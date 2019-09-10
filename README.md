# cookiecutter-icon-p-rep-simple

To run:

- Install cookiecutter - `pip install cookiecutter`
- Run `cookiecutter https://github.com/robc-io/cookiecutter-icon-p-rep-simple`
- Enter options
- Export these keys 
    - AWS_ACCESS_KEY_ID – Specifies an AWS access key associated with an IAM user or role.
    - AWS_SECRET_ACCESS_KEY – Specifies the secret key associated with the access key. This is essentially the "password" for the access key.
- Install terrform and terragrunt - tfswitch + tgswitch are the best tools 
- Run `cd <env> && chmod +x apply.sh && ./apply.sh`
    - Might need to nudge it along by running terragrunt from within the directories
- Run `chmod +x destroy.sh && ./destroy.sh` to destroy the resources 

