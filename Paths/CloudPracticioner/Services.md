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

## Compute Services
### Amazon Elastic Compute Cloud (EC2)
Spinning up a fully customizable virtual server: an instance. These instances are configurable by CPU size, GB of RAM,  size and types of storage, and network speed. Only charging you for what you use, no up front costs and takes minutes to create.

**EC2 Instance Types**
- General Purpose: good for general-purpose workloads that utilize resources in equal proportions, provides a good balance of memory and computing resources, ideal for web servers or cold repos
- Compute optimized: good for compute-intensive applications, good for media transcoding, gaming servers, or scientific modeling
- Memory optimized: good for processing large datasets in memory, good for fast and large datasets 
- Storage optimized: good for high, sequential read and write access to very large datasets on local storage
- Accelerated computing: good for functions requiring high processing capabilites, utilizes cold processors or hardware accelerators to perform floating point number calculations, graphics processing, or data pattern matching 

### Container Services
Packaging code in a single project which are isolated from other code components. Everything you need to deploy and manage in the cloud can be packaged together in a container all ready to go.

**Containers**
- Similar to VMs with their own file system, CPU, memory, etc.
- Completely decoupled of underlying IT infrastructure and portable
- Amazon Elastic Container Service (ECS)
- Amazon Elastic Kubernetes Service (EKS)

**ECS**
- Helps us run containers on the cloud
- Fully managed container orchestration service to run highly secure, reliable, and scalable containers
- Deploy, manage, and scale containerized applications quickly on-premises and in the cloud
- Describe your application and the resources required, and ECS will launch, monitor, and scale your application

**EKS**
- Fully managed K8s management service to help you run K8s on AWS without installing or operating your own K8s clusters
- K8s helps you build a framework to run distributed systems like conatiners resiliently by taking care of scaling and failover management of applications, just in case one fails, another will be spun up

### AWS Elastic Beanstalk
- Handles the deployment process
- Accommodates service developed using Java, .Net, PHP, Node.js, Python, Ruby, Go, and Docker
- Retain full control over resource always
- Free to use, pay for only the consumed resources
- Autoscaling
- Copmlete freedom to select AWS resources (instance type of EC2)
- Allows manual management of infrastructure
- Provisions and operates infrastructure

### Elastic Load Balancing
- When a server is overloaded with requests, then it might be paralyzed by the traffic, either moving slowly or failing completely
- Load balancing automatically distribute oncoming traffic across multiple servers. Then each server would serve a fraction of the traffic, like air traffic controllers
- Fault tolerant
- Scalable and secure
- Monitors health of servers

### Serverless Services
Servers exist, but sometimes they are abstract and developers don't have to worry about scaling it
**AWS Lambda**
- Run code without having to provision or manager servers
- Event-driven, pay-as-you-go compute service

**AWS Fargate**
- Serverless compute engine for containers
- Focus on building applications without having to manage the underlying servers
- Works with ECS and EKS

### Amazon Lightsail
- Preconfigurated and ready-to-use operating systems, web apps, and dev stacks
- Scalable with your projects growth
- Cost effective monthly fees
- One-click-to-launch services
- Popular resources: WordPress, windowsOS, ubuntu, node.js
- Easy to *quickly* deploy projects

## Storage Services
### Types of Storage
**Object storage**
- Files are broken down into pieces called obejcts, which are placed in buckets
- Store massive amounts of unstructured data (like photos, videos); best suited for static data (data that doesn't change)
- Components of an objectsL data, metadata, and identifier (unique address of the data for locating)
- AWS object storage service: Amazon Simple Storage Service (Amazon S3)

**File Storage**
- Data is stored as pieces of information inside a folder
- Has hierarchy, and folders can be inside other folders
- Amazon Elastic File System (EFS)

**Block Storage**
- Stores data in units of blocks
- Utilizes unique identifiers to make search efficient 
- Distributes and stores blocks in multiple places; when the data is requested, the blocks are reassembled for the user
- Amazon Elastic Block Store (EBS)

### Amazon Simple Storage Service (S3)
- Object storage service
- Industry-leading data availability, security, performance, and scalability
- Scalability: increase or decrease your usage with extremem flexibility and be charged only for what you use
- Has 99.99999999999% (11 nines) durability - almost no chance of data becoming corrupted

**Storage Classes**
- S3 Intelligent-Tiering: provides cost savings by automatically moving objects between cost-optimized access tiers
- S3 Standard: general-purpose storage for frequently accessed data requiring millisecond access
- S3 Standard-Infrequent Access (S3 Standard-IA): lower-cost storage for data that is access monthly with millisecond retrieval
- S3 Glacier Instant Retrieval: lower-cost storage for rarely access long-term archive data with millisecond retrieval
- S3 Glacier Flexible Retrieval: low-cost storage with low retrieval fees for archived or backend-up-data-with 1-5 minutes, 3-5 hour, or 12 hour retrieval times
- S3 Glacier Deep Archive: lowest-cost option for long term achieves with 12- or 48 hour retrieval times
- S3 One Zone-Infrequent Access (S3 One Zone-IA): low-cost storage for infrequently accessed objects with rapid retrieval that don't require multi-AZ redundancy
- S3 on Outposts: object storage for on-premises for AWS Outpost environments

### Amazon Elastic Block Store (EBS)
Add extra block storage to an EC2 instance instantly
- Raw, unformatted block device attached to an EC2 instance
- Can add multiple EBS volumes to one EC2 instance
- Use as file systems or hard drives
- Dynamically change configurations to attached volumes via management console
- Automatically replicated within it availability zones
- Different types of EBS storage types for your needs and budgets
- Persistent block storage volumes: do not disappear when EC2 instances are rebooted
- Can be encrypted
- Exist independently of EC2 instances so can be moved to other instances
- Like an external hard drive for these servers

### AWS Snow Family
**AWS hybrid cloud service**
- extends AWS infrastructure and services into the edge, where customers physically reside
- These are hardware services (they physically ship these devices to you)

**AWS Snowcone**
- Tiny, at 4.5lb, 8TB of HDD storage, or 14TB of SSD storage, 4GB of memory
- Provides edge computing, data stroage, data transfer services in environments with little or no internet connectivity
- Collect and process data
- Transfer data back to AWS over the internet by utilizing AWS DataSync
- Ship device back to AWS for rapid offline data transfer

**AWS Snowball Edge**
- Just under 50lb, 80-210TB of storage capacity, 80-416GB of usable memory
- You can choose compute optimized or storage optimized for different capabilities
- Transfer data to the device to ship back to AWS, or utilize its compute capabilities to do local processing

**AWS Snowmobile**
- Largest option: a 45-foot-long shipping container pulled by a semitrailer truck!
- Exabyte-scale data migration device to migrate up to 100 petabyte of data
- AWS Snowball Edge and AWS Snowmobile are HIPAA compliant

### AWS Storage Gateway
Connects on-prem storage with AWS Storage (S3 or EBS). It creates a gate from on-site users to cloud resources with minimal latency.

**File Gateway**
- Files stored as objects in S3
- One-to-one representation of each file
- Asynchronously updates objects to S3 as local files are updated
- Local cache to provide low-latency access to recently accessed files

**Volume Gateway**
- Upload files in blocks like virtual hard drives
- Asynchronously backed up as point-in-time snapshots and stored as EBS snapshots
- Stored volume: complete copy on-premises; sends snapshots to AWS
- Cached volume: keeps most recently accessed data on premises, complete copy on AWS

**Tape Gateway**
- Uses existing tape-based backup infrastructure to back up to virtual tapes
- Data stored locally, then asynchronously uploaded to S3
- Data can be archived using Amazon S3 Glacier

**Pricing**
- You'll pay for storage and to access the stored data
- The quicker you can access the data, the more expensive the solution is
- For example, data stored via tape gateway is much cheaper when saved to S3 Glacier Deep Archive than to S3 Glacier

### AWS Backup
- Fully managed, policy-based backup service that automatically protects your backed up data across all your AWS services and hybrid environments according to your backup policies and settings
- Exabyte scale (billion gigabytes)
- Provides data protection, ransomware recovery capabilities, compliance insights for data protection policies and operations

## Database Services
**AWS Database Solutions**
- Relational databases: Amazon RDS, Amazon Aurora
- NoSQL databases: Amazon DynamoDB
- In-memory databses: Amazon MemoryDB for Redis, Amazon DynamoDB Accelerator (DAX), Amazon ElastiCache
- Database migration tools: AWS Database Migration Service, AWS Schema Conversion Tool

**Relational Databases**
- Store and organize data in tables
- Data is related to each other with predefined relationships
- Commonly used inteface is SQL (structured query language)

*Amazon Relational Database Service (RDS)*
- Collection of managed services to set up and operate relational databases
- highly scalable
- Database engines choices supported: Amazon Aurora, Oracle, Microsoft SQL Server, MySQL, PostgreSQL, MariaDB
- Can also deploy on-premises with Amazon RDS on AWS Outposts

*Amazon Aurora*
- Fully managed (by AWS RDS) relational database engine
- One of the database engines supported by Amazon RDS
- Can monitor performance through monitoring services
- MySQL and PostgreSQL compatible
- Autoscaling
- Get the same security, availability, and reliability of commericial databases for faster and cheaper

**AWS Database Migration Services**
- AWS Data Migration Service (AWS DMS)
- AWS Schema Conversion Tool (AWS SCT)

**NoSQL Databases**
- AKA non-relational databases
- Built for lots and lots of data
- Variety of data models, like key-value, documents, graph

*Amazon DynamoDB*
- NoSQL Database Service
- fast, flexible, fully managed, and secure
- Fully Managed, serverless key-value database
- Scalable automatically
- Fault tolerance and stability with redunancies

**In-Memory Databases**
- Memory Database (MMDB)
- In-Memory Database System (IMDS)
- Real Time Database (RTDB)
- Databases that rely on internal memory or RAM for data storage
- ideal for applicatiosn that require microsecond reponse times or have large spikes in traffic
- Offers low latency, high throughput, and high scalability like banks, gaming apps
- Examples: Amazon MemoryDB for Redis, Amazon DAX, Amazon ElastiCache

**Data Warehouse**
*Amazon RedShift*
- Fully managed, no servers to provision or manage
- Petabyte scale data warehouse service
- Faster and cheaper than other data warehouse providers
- Data warehouse: stores extremely large amounts of data collected from a wide range of sources to analyze
- Secure, quick to set up, and easy to scale

### Evaluate: Hosted or Managed Database?
Hosting, managing, patching our own databse on our virtual server or on AWS.
**Evaluation**
- How much control do you need over your infrastructure?
- How much do you want to automate and save money/time?
- Managed services will save you time and moeny, but you lose control over your infrastructure
- Spinning up an Amazon EC2 instance to host your databse gives you control but will require more active management

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