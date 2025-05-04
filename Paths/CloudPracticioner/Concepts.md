# Concepts of Cloud Computing
## Introduction to Cloud Computing

### Defining the Cloud
We can use it to pass information, store data, and more. The internet itself is made up of copper wires and global network of billions of devices.

A browser sends a request to our internet service provider, they then send a request to a server for the domain name requested. If there's a match, it sends data packets back to our machine.

Cloud computing is an on-demand, pay-as-you-go delivery of compute, database storage, application, and other IT resources.

### Traditional Procurement Process
**Servers**
- Searching for a server that meets specific needs
- Get a quote from the manufacturer
- Send the quote for approval from finance
- Immediately pay and then order the server
- However, if it didn't meet your needs, the process repeats

### History
**1950s Mainframe Computing**
A central computer accessed by many user devices sending requests to the central computer.

**1970s Virtual Machines**
Multiple complete operating systems that "live" in a single piece of hardware. Hypervisors: software that links multiple hardware to use as one giant resource, an early iteration of cloud computing.

**2020s The Cloud**
We can connect to the countless servers provided by big service providers linked by hypervisors. There's unlimited access and limitless potential.

## Concepts
Cloud services are available from any machine connected on the internet. 

**Main Advantages**
- Trade capital expense for variable expense
- Benefit from massive economies of scale
- Stop guessing capacity
- Increase speed and agility
- Stop spending money running and maintaining data centers
- Go global in minutes

**Other Advantages**
- There's no need for physical servers or cabling
- No need for server room setup or maintenance
- No hardware replacement or procurement
- Pay only when and what you consume
- Scale up or down instantly
- Benefit from economy of scale (cheaper)

## Well-Architected Framework (Best Practices)
How to build the most secure, stable, durable, efficient, and high-performing IT infrastructure possible:
1. Avoid Unnecessary Costs
- Use only what you need, turn off resources we don't need
- Reserve resources in advance (discounts)
- Continue to monitor for optimization, know what is driving costs
2. Reliability
- Dynamically adjust computer resources
- Automatically recover from service disruptions
- Test disaster recovery settings
- Incorporate redundancy
- Have duplicate copies of resources
3. Efficiency
- Use computing resources to adjust to system requirements
- New changes should be able to go global in minutes
4. Security
- Information, systems, assests
- Should be automated
- Data should always be protected whether at rest or in transit
- Manage access and enable traceability, everything should be well defined
5. Operational Excellence
- Monitor everything
- Document everything, refine operation procedures
- Antipicate failure
- Update processes, post-mortems and develop procedures

## AWS Cloud Adoption Framework (CAF)
Ways for a company to start using AWS
1. Starting from the beginning
2. Migrating to AWS, adopting to the cloud (AWS CAF)
    - This takes a lot of collaboration with stakeholders and planning
    - Provides recommendations for implementing, adopting, configuring, and maintaining effective workflows in the cloud
    - Identify and iteration on solutions

AWSCAF has a bunch of transformation domains allowing for subsequent domains to be transformed as well, AKA the AWS CAF Cloud Transformation Value Chain
**Technological Transformation**
- utilize cloud to migrate and modernize legacy infrastructure, applications, and data and analytics platforms
**Process Transformation** 
- digitize, automate, and optimize business operations
**Organizational Transformation**
- reimagine the operational model, or how your business and technology teams work together to create customer value and meet strategic goals
**Product Transformations**
- reimagine the business model by creating new value propositions and revenue models

By following any of these transformation value chains, expected key business outcomes include:
- Reduced business risk
- Improved environmental, social, and governance (ESG) performance
- Revenue growth
- Increased operational efficiency

It is enabled by foundational capabilities, such as efficiently distributing resources, people, technologies, etc.

Perspectives and Foundational Capabilities
**Business perspective**
- ensure that cloud investments accelerate digital transformation and business outcomes
- Stakeholders: CEO, COO, CFO, CIO, CTO
- Examples: strategy and product management

**People perspective**
- Create a culture of continuous growth and learning where change is embraced 
- Stakeholders: CIO, COO, CTO, Cloud Director, cross functional leaders
- Examples: cloud fluency and organizational structure

**Governance perspective**
- Maximize organizational benefits while minimizing cloud-transformation-related risks
- Stakeholders: chief transformation officer, CIO, CTO, CFO, chief data or risk officer
- Examples: risk management, data governance

**Platform perspective**
- Building enterprise-grade, scalable, hybrid cloud platforms, implement cloud-native solutions, and modernize existing infrastructure 
- Stakeholders: CTO, technology leaders and architects
- Examples: modern application development & platform engineering

**Security perspective**
- Achieve confidentiality, integrity, and availability needs of cloud data and workloads
- Stakeholders: CISO, CCO, internal audit leaders, security architects & engineers
- Examples: security governance and threat protection

**Operations perspective**
- Cloud services delievered meet business needs
- Stakeholders: Infrastructure and operations leaders, site reliability engineers, and information tech service managers
- Examples: obvservability and incident and problem management

 For an effective cloud adoption experience, it's important to envision the target state and understand cloud readiness, implement incrementally. 

**Envision Phase**
Demonstrate how cloud adoption will help accelerate business outcomes and objectives

**Align Phase**
Identify capability gaps across the 6 CAF perspectives, identify cross-organization dependecies, and recognize stakeholder concerns

**Launch Phase**
Deliver pilot initiatives in production and demonstrate incremental business value before scaling to full production

**Scale Phase**
Expand pilots, scaling up to meet desired business needs while sustaining business benefits

## Review: Cloud Computing Concepts
**Advantages over legacy infrastructure**
1. Trade fixed for variable expense
2. Benefit from mass economies of scale
3. Stop guessing capacity
4. Increase speed and agility
5. Stop sepnding money running and maintaining data centers
6. Go global in minutes
**AWS Well-architected framework**
There are 6 pillars behind creating a well-architected framework in AWS
1. Operational excellence
2. Security
3. Reliability
4. Performance efficiency 
5. Cost optimization
6. Sustainability

**AWS cloud adoption framework (AWS CAF)**
There are different types of transformation domains:
1. Technology
2. Process
3. Organizational
4. Product 
The value chain of transformational domains are enabled by a number of perspectives:
1. Business
2. People
3. Governance
4. Platform
5. Security
6. Operations
There is the transformation journey as well, these have four phases
1. Envision
2. Align
3. Launch 
4. Scale

# Introduction to AWS
## A Brief History of AWS
- Amazon.com Web Service launched in 2002
- Planned to be Merchant.com, but they become a service company
- They have a majority market share, but others are quickly gaining
- 15 years old and exponentially growing
- 1 million active customers
- 10% of amazon revenue came from AWS

## What is AWS?
- Provides IT infrastructure services to organizations as web services
- Resources are accessed using the internet
- Utilizes the pay-as-you-go model
- There are 24 service groups offered
- Cloud computing service provider that offers flexibility, reliability, and affordability

## Big companies using AWS
- Airbnb
- General Electric
- Netflix
- Atlassian

# Diving into AWS
## Popular services offered by AWS
**Computer Services**
- Provide virtual server hosting, container management, and serverless computing
- Organizations can "rent" server compute space and capacities for cheap from AWS
- No longer have to purchase physical servers or maintain data centers on-premises

**Storage Service**
- Provider storage for both in-use and archival files; S3 to use on the website or store large amounts of data
- Different costs associated with how often you need to access the files and how durable or available you want them to be
- Storage type for almost every level of need with very granular costs to meet budget requirements

**Database Services**
- Fully managed relational and NoSQL databases
- Relational database service and highly scalable petabtye data warehouse service
- Highly scalable and cost efficient: crunch data at a fraction of the cost of on-site database servers