# Security and Compliance of Cloud Computing
## Introduction
In the past, IT infrastructure might servers rooms secured with key cards or off-site data centers, usually being difficult to access and having lots of security personnel.

## Security in the Cloud
Present day AWS Cloud IT infrastructure:
- Secure global network of data centers
- Safeguards to protect customer privacy
- Many compliance programs to meet industry compliance requirements for data security
- Highest security standards without owning any data centers
- Scale quickly and securely

### Shared Responsibility Model
Understand user responsibility versus AWS responsiblity, who is responsible for the security of the data centers?
The security of cloud computing infrastructures and data is a shared responsibility between the customer and AWS.

*Responsiblities*
**AWS**
- Protecting the physical security of data centers hosting the AWS cloud and the security of the infrastructure hardware, software, networking
- In short: AWS is responsible for the security of the components that make up the AWS cloud

**YOU**
- For varying levels of security functions: protecting customer data, data encryption, identity and access management, patching operating systems of VMs, and configuring firewalls
- In short: We are responsible for security of things in the cloud such as patching services

**Security Pillar Components**
- Identity and access management (IAM)
- Detective controls
- Infrastructure protection, automation
- Eliminate need for direct handling of user data
- Incident response, be prepared to intervene and learn from it

### AWS Cloud Security, Governance, and Compliance Concepts
**Auditing on AWS**
- Compliance validation tools: AWS Security Hub, AWS Config, AWS CloudTrail, AWS Audit Manager
- Self-service audit artifact retrieval service: AWS Artifact

**Governance**
- The process of creating and enforcing decisions within an organization

## Access Management
### Providing access in AWS
- Principles of least privilege: only provide the least amount of access needed for an entity to do its job and nothing more, to keep resources secure
- Identity and access management (IAM) controls who can access what

Identities in AWS can be human identities [users, people, customers, devs (workforce identities)], workload [collection of resources that provide value like web-apps, READ, WRITE], federated identity [SSO, AWS IAM]

**Controlling Access to AWS**
Utilize *Roles* in IAM, has a list of cans and cannots, anyone with a role assumes this "costume" to have permissions to certain things. *Policies* define what a resource can and can't do and *Permissions* define whether an action is allowed or not

**Traffic Conrtol**
- Security groups (like a bouncer)
    - Protect at instance level
    - Stateful: Traffic allowed in is allowed out ("remembers")
    - No explicit deny traffic
    - All inbound traffic blocked and outbound traffic allowed by default
- Network Access Control Lists (NACLs) (like a whitelist or blacklist)
    - Protect at subnet level
    - Stateless: in and out traffic need to be defined separately ("forgets")
    - Explicit deny traffic
    - All inbound and outbound traffic allowed by default

### Identity Access Management (IAM)
Managing access permissions in AWS; IAM easily provides granular access permissions to every user and service
- Manage access to services and resources
- Manage users and groups 
- Can provide access to users or other AWS services
- Permissions are global (any region)
- Follow pinciple of least privilege

Use IAM to:
1. Manage users
    - Create users in IAM and assign security credentials
    - Users can have very precise permission sets
    - Users can access AWS through AWS management console
    - Can provide direct access to data/resources
2. Manager IAM roles
    - Create roles to manage permissions and what those roles can do
    - An entity assumes a role to obtain temporary security credentials to make API calls to resources
    - Used to provide a user from another AWS account with access to your AWS account
3. Manage federated users
    - Enable identity federation: Allow existing identities in your enterprise to access AWS without having to create an IAM user for each identity
    - Can use any identity management solution that uses SAML 2.0 or one of the AWS federation samples

Benefits of IAM:
- Enhaced security
- Granular control
- Ability to provide temporary credentials
- Flexible security credentials management
- Federated access
- Seamless integration across various AWS services

### Principle of Least Privilege
Users should only have access to things that they need to do their job. For example, the CEO should have access to a lot of things, the new hire should not, the IT department should have access to services and to distribute permissions but may not need to access the data itself.

- Use IAM to provide access
- Provide access to resources to both users and other AWS services
- Start with minimum set of permissions, and grant additional permissions only as necessary
- Determine what the user or service needs to be able to do and craft policies to perform only those specific tasks

### Keeping Accounts Secured
**Security Credentials**
- Password Policy: Password requirements and rotation of passwords
- Access Key: To make programmatic calls to AWS for temporary use
- Multifactor Authentication MFA or 2FA: User presents at least two pieces of evidence that verify their identity

**AWS Security Manager**
- Saves all of your "secrets" for you
- Secrets: passwords, credentials, tokens, access keys, etc.
- Integrates with key AWS services

## Security Services
### AWS Systems Manager
Securely manage multi-cloud systems
- Control tower to manage resources in multicloud and hybrid environments
- Visualize and operate multiple services from one place
- Create groups of resources and select a group to view metrics and act
- Help IT admins to verify infrastructure is running smoothly and alerts them when resources are not meeting internal compliance policies

### Web Application Firewall (WAF)
- Firewall service that protects web apps from common web exploits
- Protects against exploits compromising security or availability
- Protects against attacks that consume excessive resources ($$)
- Improves web traffic visibility
- Provides cost-effective web app protection
- Increased security and protection against web attacks
- Easy to deploy and maintain 

### AWS Shield
What are DDOS attacks?
- Distributed denial-of-service attack.
- An attempt to make a machine or network resource unavailable
- Most often by making excessive repeated requests to the website using thousands of unique IP addresses
- Overloading the server to prevent real users from using it

AWS Shield provides detection and automatic mitigations which minimize the effects of DDoS attacks on your apps. They also help minimize application downtime and latency when an attack occurs.

**AWS Shield: Standard**
- Automatically enabled
- Free
- Protects web applications against a majority of common DDoS attacks
- Gives comprehensive availability protection against all known infrastructure attacks when used with CloudFront and Route 53
- Catered to budget and needs (scalability)

**AWS Shield: Advanced**
- Continuous 24/7 access to AWS DDoS response team
- Near real-time visibility into attacks or events
- Integrates with AWS WAF
- Provides higher-level protections, network-and transport-layer protections, and automated application traffic monitoring
- Financial protection against DDoS related spikes in charges for EC2, elastic load balances, CloudFront, and Route 53
- Available globally on all CloudFront and Rout 53 edge locations
- Your web application can be hosted anywhere in the world and still be protected by AWS shield

### Amazon Inspector
Automated security assessment service for apps to find security issues and bring them to your attention. To know that the application complies with standards and compliance.
- Automatically assess for exposure, vulnerabilities, and deviations from best practices
- Generated detailed reports to help check for vulnerabilities
- Security teams can get reports validating that tests were performed
- Reduces risk of introducing security issues during deployment and developement
- Define standards and best practices OR choose the constantly updated AWS standards

### AWS Trusted Advisor
- Guides the provisioning of resources to follow best practices
- Scans infrastructures and advises you on how it is or is not following best practices
- Based on five categories: cost optimization, performance, security, fault tolerance, service limits
- Provides customized action recommendations to meet best practices

**Seven core trusted advisor checks**
1. S3 bucket permissions
2. Security groups - specific ports unrestricted
3. IAM use
4. MFA on root account
5. EBS public snapshots
6. Relational Database Service (RDS) public snapshots
7. Service limits

**Full trusted advisor checks**
- More types of checks on top of core checks
- Notifications through weekly updates
- Set up automated actions in response to alerts using CloudWatch
- Programmatic access to scan results via API

### Amazon GuardDuty
- 24/7 threat detection service for the AWS cloud
- Monitors for malicious activity and unauthorized behavior
- Analyzes events to send actionable alerts to CloudWatch
- Uses machine learning, anomaly detection, and integrated threat intelligence to identify protential threats
- Easy to deploy
- Helps you take action immediately if a threat is found

### AWS Artifact
On-demand self-service portal to download AWS security and compliance documents and Independent Software Vendor (ISV) compliance reports, our infrastructure needs to be compliant even though AWS itself is compliant. Develop and obtain documents to demonstrate compliance. Review, accept, and track status of AWS agreements specific to your organization's industry.

### Governance and Compliance Services
**CloudWatch**
- Observes and monitors application performance
- Set alarms and automated actions to activate at predetermined thresholds to automatically mitigate potential issues
**CloudTrail**
- Generates audit trails of every action taken by a user, role, or AWS service
**Audit Manager**
- Automates evidence collection to generate audit-ready reports to prove system compliance for audits
**AWS Config**
- Provides detailed views of resource configurations in account
- Tracks how configurations and relationships between resources change over time
- Monitors configuration settings and send alerts when a resource violates rules