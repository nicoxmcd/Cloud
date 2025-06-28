# Cloud Infastructure & Preparation
> This repository contains my notes for various certification exam (specifically AWS), Terraform, and CI/CD scripts for planning, applying, and destroying that infrastructure.

# Best Practices
For all of the following steps, please follow [this tutorial](https://www.youtube.com/watch?v=_KhrGFV_Npw) on creating an Adminstrator user rather using the root account.


# Creating OIDC for GitHub Actions
Find IAM and go to identity providers to add a new identity provider:
![Identity Provider](https://github.com/user-attachments/assets/bbc0f9a6-a334-43a7-b36b-8d636ef65c9e)
Select OIDC, and input the following:
![OIDC](https://github.com/user-attachments/assets/2f515c9f-03d3-4854-bd81-ee845737ecb9)
```
https://token.actions.githubusercontent.com
sts.amazonaws.com
```


# Setting Up My Environment
I downloaded and installed the AWS-CLI.

For the next step I needed to install [Chocolatey](https://chocolatey.org/install) which needs **Adminstrator privilege**. All you would need to do is run Powershell as Admin:
```
Set-ExecutionPolicy Bypass -Scope Process
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

To confirm the installation of chocolatey, this will output the version:
```
choco
```

I then installed awsvault to make sure that when I'm using the CLI, my credentials are hidden:
```
choco install aws-vault
```
Example from aws-vault repository:

```
# Store AWS credentials for the "jonsmith" profile
$ aws-vault add jonsmith
Enter Access Key Id: ABDCDEFDASDASF
Enter Secret Key: %%%

# Execute a command (using temporary credentials)
$ aws-vault exec jonsmith -- aws s3 ls
bucket_1
bucket_2

# open a browser window and login to the AWS Console
$ aws-vault login jonsmith

# List credentials
$ aws-vault list
Profile                  Credentials              Sessions
=======                  ===========              ========
jonsmith                 jonsmith                 -

# Start a subshell with temporary credentials
$ aws-vault exec jonsmith
Starting subshell /bin/zsh, use `exit` to exit the subshell
$ aws s3 ls
bucket_1
bucket_2
```
