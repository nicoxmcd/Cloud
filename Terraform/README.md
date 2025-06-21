# Essential Terraform

## IaC Core Principles
**Versioned Infrastructure**
Multiple versions of code that should be under source control
**Idempotence** 
Consistency, no matter how many times it is run
**Self-describing infrastructure**
The infrastructure is the code and can be understood by people easily
**Other important concepts**
- Easily recreatable systems
- Repeatable processes
- Disposable systems
- Design is always changing
- Generic modules

## Terraform
Terraform is HashiCorp's declarative IaC tool written in HCL. Terraform CLI uses commands like init, plan, and apply to interact with AWS, Azure, Google, Compute, VMware, and more. Terraform can take care of multiple cloud providers through their API. Terraform is ideal for infrastructure that is changing often.

## Helpful Commands
Brings up a list of available commands and explanations:
```
terraform -help
```
Prepares working directory for other commands:
```
terraform init
```
Applies infrastructure to the provider, aka a terraform run:
```
terraform apply
```