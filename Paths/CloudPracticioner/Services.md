# Cloud Technology and Services
## Deploying and Operating Domain
### Interacting with the AWS Cloud
There are a number of ways to deploy resources for AWS, each of these utilzie AWS APIs. We can use just one or a combination of these tools.
1. AWS Management Console
- Graphical interface that supports most AWS services
- Web-portal-esque
- Can access billing statement, launch new services, check out health of web apps and so on
- User friendly and easy to navigate
2. AWS Command Line Interface (CLI)
- Access AWS servcies via the command line
- Command line: access and change resources via text based command entry
- Programming language agnostic
- Allows us to create scripts to run on AWS
3. AWS Software Development Kits (SDKs)
- Incoporate connectivity and functionality of a wide range of AWS services into your code
- Deploy AWS services and resources using a variety of popular programming languages (Java, C++, Ruby, PHP, etc.)
- Use AWS resources in exisitng applications

**Infrastructure as Code**
- Deploy resources into AWS Cloud using code!
- Some examples of AWS services that utilize IAC: Elastic Beanstalk, Lambda, CloudFormation

### Connecting with the AWS Cloud
How we can establish connectivity options to send data etc. Amazon provides us with a Virtual Private Cloud (VPC) to use for AWS resources.
- Virtual Private Network (VPN)
    - Creates an encrypted private network between my device and the resource I'm conencting to
    - AWS VPN service
- AWS Direct Connect
    - Directly, privately, and securely connect local network and AWS
    - "Shortest path" between local network and AWS, providing lower latency and reducing bandwidth costs
    - Bypassing public internet
- Public Internet
    - The default connection method for most daily use of internet 
    - Data transferred is not secured, private, or encrypted
    - Utilize private and secure ways to access the AWS Cloud to keep resources secure

### Cloud Deployment Models
Where our IT infrastructure resides:
**Cloud deployment/cloud-native deployment**
- All parts of IT infrastructure reside and run in the cloud
- All applications/resources are migrated to or created in the cloud
- Relies on the internet and cloud computing service providers for computational/IT requirements
- Flexible and scalable in resources
**Hybrid deployment**
- IT infrastructure lives both in the cloud and in on-premises data centers
- Connects on-premises technology with cloud based resources
- Might be in the process of migrating over to the cloud
- Allows organizations to extend/scale infrastructure in to the cloud while maintaining access to on-premises resources
- Cloud deployment as a backup/disaster recovery solution
**On-premises deployment**
- Utilizes virtualization technologies and application management to increase efficiency 
- A lot of the setup dos not provde many of the benefits of cloud computing becasue resources are all on-site
- Has very low latency (lag) because resources are on-site and don't require traveling through the internet
- Provides dedicated resources, which may be an industry requirement
- Necessary for organization requiring data privacy such as medical orgs

### AWS Global Infrastructure
AWS has data centers all over the world.
**Availability Zone (AZs)**
- discrete data centers around the world, separated from each other by network, power source, and "a meaningful distance"
- Each AZ being separated as such, means that they don't share a single point of failure in case of natural or man-made disasters
- High availability: hosting resources in multiple AZs
- Fault tolerance: ability to provide uninterrupted performance even during natural/human made disasters
- Resiliency: capacity to recover from disasters quickly (similar to fault toleration, but even better) (redundancy)

**Regions**
- Region: two or more AZs
- All AZs within a region are interconnected with high bandwidth, low latency networking
- Different regions have different AWS cloud offerings (regions with more up to date service: us-east, us-west, tokyo, singapore, ireland, frankfurt)
- Can host resources in multiple regions for many reasons
- Generally choose the region closest to your physical location
- Some regions may cost differently than others
- Some may require you to host resources in different regions
- Data is subject to laws of the nation in which they are collected is data soveriegnty, if we serve customers in different countries, observe that country's regulations

**AWS Local Zones**
- Helps you run your latency-sensitive applciations by placing compute, storage, database, and other AWS resources close to large populations and business centers when there are no AWS regions close enough to your end users
- Connected with high-bandwidth secure network connections to local AWS regions to access full range of in-region services provided in those regions

**AWS Wavelength Zones**
- provide ultra-low-latency user experience for application end users by embedding AWS compute and storage services within 5G networks
- Provde mobile edge computing infrastructure to develop, deploy, and scale ultra low latency applications
- 

## Storage Services
### Types of Storage
### Amazon S3
### Amazon Elastic Block Store
### AWS Snow Family
### AWS Storage Gateway
### AWS Backup

## Database Services
### Evaluate: Hosted or Managed Database?

## Network Services
### Amazon VPC
### Amazon CloudFront
### AWS Global Accelerator
### Amazon Route 53

## Artificial Intelligence, Machine Learning, Analytics Services
### AI/ML Services
### Data Analytics Services

## Management Tools
### AWS CloudFormation
### AWS CloudWatch
### Amazon CloudWatch

## Other Services