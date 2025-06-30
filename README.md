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

# Using AWS CLI & S3
Download the AWS CLI by following [this link. ](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
When logging in as the Admin user, there was an option to get access keys:
![Get access keys](https://github.com/user-attachments/assets/1c6ace11-1b1a-4633-b808-337bf2f6c1eb)
Enter the following command to use the information from that tab to grant permission to your local environment, it'll direct you to a couple more steps and it'll be set up:
```
aws configure sso
```
![aws configure sso](https://github.com/user-attachments/assets/f34a43c2-f4c8-4d77-85d6-fa408e629c10)

To check what buckets are currently in S3, use the following command:
```
aws s3 ls
```
Creating a new S3 bucket, the bucket name must be in lowercase:
```
aws s3api create-bucket --bucket nicoxmcdportfolio --region us-east-1
```
It should return something like this:
```
{
    "Location": "/nicoxmcdportfolio"
}
```
Add a file to the bucket with this line:
```
aws s3 cp ./README.md s3://nicoxmcdportfolio
```

To check what files are inside a particular bucket:
```
aws s3 ls s3://nicoxmcdportfolio --recursive --human-readable --summarize
```
To remove a file:
```
aws s3 rm s3://nicoxmcdportfolio/README.md
```
To remove a bucket, must be empty:
```
aws s3 rb s3://nicoxmcdportfolio
```
# Terraform
So after I created everything with AWS CLI, I read up on Terraform and thought that it would be more intuitive in the long run to use, so you *could* keep using CLI or the console, but Terraform might be better. My Terraform files are in the Terraform folder, separated by project, there's only one project as of right now.
I also have a workflow set up that can deploy the resulting terraform plan:
![workflow](https://github.com/user-attachments/assets/7abe7ae8-ab58-4ae5-8208-3a78bb885764)
You have options to deploy from a different branch, which project (technically which directory, as of now I only have my portfolio), and which resource to update or deploy, if you wanted to do a single resource, however, it is better to just deploy all in case of dependencies.
