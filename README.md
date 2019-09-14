# cookiecutter-icon-p-rep-simple

This is a helper utility to automatically generate the neccesary files you need to run a `one-click` deployment
 of a P-Rep node for the ICON Blockchain.  Users can simply rerun this template and expect changes to happen 
 automatically on their account based on the updated template.   

## Prerequisites

- Cookiecutter - `pip install cookiecutter`
- jq - https://stedolan.github.io/jq/download/
- Terraform and Terragrunt (might we suggest [tfswitch](https://warrensbox.github.io/terraform-switcher/) and [tgswitch](https://github.com/warrensbox/tgswitch))

## Preparation
- Run `cookiecutter https://github.com/robc-io/cookiecutter-icon-p-rep-simple`
- Enter options - You can save your options in a yaml file as [documented below](#saving-config-values)
- Export these keys 
    - AWS_ACCESS_KEY_ID – Specifies an AWS access key associated with an IAM user or role.
    - AWS_SECRET_ACCESS_KEY – Specifies the secret key associated with the access key. This is essentially the "password" for the access key.
    - If you are using keys with aws profile, export the profile - `export AWS_PROFILE=profile`
- Ensure the IAM user provided has the AdministratorAccess role and no other policies are applied that explicitly deny

## Applying 

- Run `cd <env> && chmod +x apply.sh && ./apply.sh`
    - Might need to nudge it along by running terragrunt from within the directories
- Run `chmod +x destroy.sh && ./destroy.sh` to destroy the resources 

### Saving Config Values 

```bash
cookiecutter --config-file=context.yaml https://github.com/robc-io/cookiecutter-icon-p-rep-simple
```

```yaml
default_context:
    environment: "dev"
    region: "us-east-2"
    ACCOUNT_ID: "987654321012"
    LOCAL_KEY_FILE: "full/path/to/.ssh/id_rsa.pub"
    LOCAL_PRIVATE_KEY_FILE: "full/path/to/.ssh/id_rsa"
    ROOT_DOMAIN_NAME: "insight-icon.net"
    SUBDOMAIN: "prod"
    CORPORATE_IP: "1.2.3.4"
    ZONE_ID: "Z1234567890ABC"
```

This will fill in default prompts:

To suppress input run with additional flag `--no-input` flag:

```bash
cookiecutter --config-file=context.yaml https://github.com/robc-io/cookiecutter-icon-p-rep-simple --no-input
```
