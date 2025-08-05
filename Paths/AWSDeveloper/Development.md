# Development with AWS Services
## What is AWS?
- A web service allows us to access a physical computer that is running on a remote location
- Also refers to a software or resource you can access over the internet
- Physical servers are computing resources
- Cloud service provider
    - Provides a cloud based platform or cloud services
    - Allows you to rent out virtual servers that you access remotely
    - With many different types of CPU, storage, network and other components that you can choose from
- Some companies might use multiple cloud providers

## Global Infrastructure
### Availability Zones AZ
- Consists of 1+ data center, typically within 100km in a geographic *zone*
- Improves the availability of systems

### Regions
- Consists of multiple AZs, therefore it can achieve higher levels of fault tolerance
- You can also replicate across regions for disaster recovery and backups
- Will be within a specific country because of data sovereignty requirements

### Edge Locations (Networks)
- POP (Point of Presence)
- Use global edge networks so users don't have to travel far to load data
- This is part of a global CDN
- Data will cached wherever you decide to retrieve data faster instead of retriving it from the origin server

## Compute Services
### Virtual Machines
When choosing a compute service, you have the option of choosing a physical server, or a virtual machine.
A virtual machine is virtualization of a machine on a shared physical server. This can be used by multiple tenants and customers. The customers also have the options to choose storage size, number of CPUs, type of CPU (Intel, AMD, Graviton etc.)
Using a dedicated server allows the single customer access to more hardware components, possibly the hypervisor with options ofr customizable virtualization.
Serverless would mean the customer does not have to manage any of the underlying infrastructure or server, just pop in the code and go.
**Examples**
- Amazon EC2
- Amazon LightSail
- AWS Outposts

### Serverless
**Examples**
- AWS Lambda
- *AWS Fargate*

### Orchestration
**Examples**
- AWS Elastic Beanstalk
- AWS Batch

### Containers
**Examples**
- Amazon EKS
- Amazon ECS
- *AWS Fargate*