### Terraform AWS test configuration

#### set-up the aws credentials on the secret.tfvars file

```
access_key = "xxx"
secret_key = "xxxxx"
user = "ec2-user"
private_key_path = "/xxx/xxx/xxx"
```

#### Initialize and run terraform

> terraform init
> terraform apply -var-file=secret.tfvars -var-file=config.tfvars

#### Always destroy the resource to avoid unnecessary AWS charges

> terraform destroy
