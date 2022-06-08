# aws-terraform-template
This template is designed to help you start an AWS terraform repository in the same structure across all projects. 

# Getting started

All commands are designed to be used on linux based operating systems.

## pre commits

This repository makes use of https://github.com/gruntwork-io/pre-commit to help enforce code quality. 
Useful guide https://medium.com/slalom-build/pre-commit-hooks-for-terraform-9356ee6db882

Configuration for the pre commit can be found in .pre-commit-config.yaml

At present the pre commit is doing:
- terraform-validate - ensuring any terraform code which is being committed is valid
- terraform fmt - formatting any terraform which is being committed. 
- terraform-docs - Used to automatically generate documentation for this repo

Install pre-commit

```
brew install pre-commit gawk coreutils 
```

Install aws-cli

```
brew install awscli
```

Authenticate with AWS

```
export AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY"
export AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
export AWS_DEFAULT_REGION="eu-west-2"
export S3_BUCKET_NAME="YOUR_BUCKET_NAME"
```

Terraform init 

```
terraform init -backend-config=bucket="${S3_BUCKET_NAME}" \
              -backend-config=key="tfstate/default.tfstate" \
              -backend-config=region="eu-west-2"
```

Run terraform plan 

```
terraform plan 
```

Run terraform apply

```
terraform apply 
```

