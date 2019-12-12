# GCP-vault-terraform

Generic solution to deploy Vault on GCP

### Prerequisites

- Existing Project, replace project name on dev.tfvars file
- Cloud Resource Manager API Enabled
- Existing Bucket to store tf files, replace bucket name on backend-vars file
- JSON file (GCP credentials). To generate a credentials file, on Google console go to "APIs and Services">"Credentials">"Create credentials". Put the path of this file on dev.tfvars

### Terraform version
0.12.6

### How to deploy an environment

- Run [Terraform's init](https://www.terraform.io/docs/commands/init.html) command with its configuration file
```bash
$ terraform init -reconfigure -backend-config=backend-vars 
```

- Dry-run the execution by running the [Terraform plan](https://www.terraform.io/docs/commands/plan.html) command
```bash
$ terraform plan -var-file=dev.tfvars 
```

- Run [Terraform apply](https://www.terraform.io/docs/commands/apply.html) command to build your infrastructure
```bash
$ terraform apply -var-file=dev.tfvars 
```


