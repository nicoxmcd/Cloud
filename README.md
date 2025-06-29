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
Then we created a role that would allow the OIDC to deploy my portfolio to a S3 bucket. First create a new role, and select web identity and select the github OIDC that you added along with the audience, from there add your organization, or in this case, your username. There is also an option to specify your repositories or to allow any of them, use your discretion, I personally only allowed this repository nicoxmcd/nicoxmcd:*:
![Creating Role](https://github.com/user-attachments/assets/26b3429b-b8ef-4d76-92df-0287c21223f5)
In the next step, you can specify the permissions you want to give the role, for me I just allowed the S3 full access permission and CloudFrontFullAccess:
![S3 Full Access](https://github.com/user-attachments/assets/7c68e15d-583a-4953-90d9-60d1521c1d34)
Name your role and verify all the permission and you're good to go:
![Name your role](https://github.com/user-attachments/assets/9940860e-e15c-4108-adf9-4f01c731cc45)
Confirm they are linked by checking in the ARN in the trusted relationships:
![ARN](https://github.com/user-attachments/assets/888aafa4-6f61-4a9d-aadd-e8ae94e77cf0)

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

# Using AWS CLI
When logging in as the Admin user, there was an option to get access keys:

