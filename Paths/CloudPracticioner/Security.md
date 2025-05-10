# Security and Compliance of Cloud Computing
## Introduction
In the past, IT infrastructure might servers rooms secured with key cards or off-site data centers. They are usually difficult to access and there are lots of security personnel.

## Security in the Cloud
### Security in the Cloud
Present day IT infrastructure in the AWS cloud can be summarized as:
- Global network of data centers built with security in mind
- Safeguards to protect customer privacy
- Dozens of compliance programs to help meet industry compliance requirements for data security
- Highest security standards without need for your own data centers
- Scale quickly and securely

### Shared responsibility model
Understand my responsibility versus AWS responsiblity, who is responsible for the security of the data centers?
The security of cloud computing infrastructures and data is a shared responsibility between the customer and AWS.

*Responsiblities*
**AWS: Security of the Cloud**
- protecting the infrastructure such as the physical security of data centers hosting the AWS cloud and the security of hardware, software, networking, and so on that run the cloud computing services
- In short: AWS is responsible for the security of the components that make up the AWS cloud

**YOU: Security in the Cloud**
- For varying levels of security functions depending on the AWS Cloud services used, such as protecting customer data and data encryption, identity and access management, patching operating systems of virtual machines (VMs), and configuring firewalls
- In short: we are responsible for security of things in the cloud such as patching services

### Well-architected framework
1. Operational excellence pillar
2. Security pillar <-
3. Reliability pillar
4. Performance efficiency pillar
5. Cost optimization pillar
6. Sustainability pillar

**Security Pillar Components**
- Identity and access management (IAM) [use least privilege]
- Detective controls
- Infrastructure protection, automation
- Data , eliminate need for direct handling of user data
- Incident response, be prepared to intervene and learn from it

### AWS cloud security, governance, and compliance concepts
AWS has plenty of compliance programs such as compliance certifications and security standards
 
**Auditing on AWS**
- Compliance validation tools: AWS security hub, AWS config, AWS CloudTrail, AWS Audit Manager
- Self-service audit artifact retrieval service: AWS artifact

**Governance**
- The process of creating and enforcing decisions within an organization

## Acess Management
### Providing access in AWS
- Principles of least privilege: only provide the least amount of access needed for an entity to do its job, and nothing more to keep resources secure
- Identity and access management (IAM), controls who can access what

Identities in AWS can be human identities [users, people, customers, devs (workforce identities)], workload [collection of resources that provide value like web-apps, READ, WRITE], federated identity [SSO, AWS IAM]

**Controlling Access to AWS**
Utilize *roles* in IAM, has a list of cans and cannots, anyone with a role assumes this "costume" to have permissions to certain things.
*Policies* define what a resource can and can't do
*Permissions* define whether an action is allowed or not

**Traffic Conrtol**
- Security groups (like a bouncer)
    - Protect at instance level
    - stateful: traffic allowed in is allowed out ("remembers")
    - No explicit deny traffic
    - All inbound traffic blocked and outbound traffic allowed by default
- Network access control lists (NACLs) (like a whitelist or blacklist)
    - Protect at subnet level
    - Stateless: in and out traffic need to be defined separately ("forgets")
    - Explicit deny traffic
    - All inbound and outbound traffic allowed by default

### Identity access management (IAM)
Managing access permissions in AWS; how can we provide granular access permissions to every user and service while being easy to manage: IAM.
- Manage access to services and resources in the AWS cloud
- Manage users and groups 
- Can provide access to users or other AWS services
- Permission are global (any region)
- Follow pinciple of least privilege

Use IAM to:
1. Manage users
    - create user in IAM and assign security credentials
    - Users can have very precise permission sets
    - Users can access AWS through AWS management console
    - Can provide programmatic (applications directly) access to data/resources
2. Manager IAM roles
    - Create roles to manage permissions and what those roles can do
    - An entity assumes a role to obtain temporary security credentials to make API calls to your resources
    - Used to provide a user from another AWS account with access to your AWS account
3. Manage federated users
    - Enable identity federation: allow existing identities in your enterprise to access AWS without having to create an IAM user for each identity
    - Can use any identity management solution that uses SAML 2.0 or one of the AWS federation samples

Benefits of IAM:
- Enhaced security
- Granular control
- Ability to provide temporary credentials
- Flexible security credentials management
- Federated access
- Seamless integration across various AWS services

### Principle of least privilege
Users should only have access to things that they need to do their job. For example, the CEO should have access to a lot of things, the new hire should not, the IT department should have access to services and to distribute permissions but may not need to access the data itself.

Everyone role has a set of access permissions necessary to effectively complete its job, and the individual in the role should have no more and no less than the optimal level of access.
- Use IAM to provide access
- Provide access to resources to both users and other AWS services
- Start with minimum set of permissions, and grant additional permissions only as necessary
- Determine what the user/service needs to be able to do and craft policies to perform only those specific tasks

### Keeping accounts secured
**Security Credentials**
- Password policy: password requirements, rotation of passwords
- Access key: to make programmatic calls to AWS for temporary use
- Multifactor Authentication MFA or 2FA, user presents at least two pieces of evidence (factors) that verify they should access the said account, like receiving a textmessage with a code to input 

**AWS Security Manager**
- Saves all of your "secrets" for you
- Secrets: passwords, credentials, tokens, access keys, etc.
- Integrates with key AWS services

## Security Services
### AWS Systems Manager
Securely manage multi-cloud systems
- Centralized control tower to manage AWS resources in multicloud and hybrid environments
- Visualize and operate on multiple AWS services from one place
- Create logical groups of resources, then select a resource group to view metrics and take action
- Help IT asmins to verify IT infrastructure is running smoothly and alerts them when resources are not meeting internal compliance policies

### AWS WAF (web application firewall)
- Protects web apps running on the AWS cloud from common web exploits
- Firewall service for web-apps
- Protects web apps agaisnt exploits that could compromise security or availability
- Protects apps from exploits that could force them to consume excessive resources ($$)
- Imrpoves web traffic visibility
- Provides cost-effective web app protection
- Increased security and protection against web attacks
- Easy to deploy and maintain 

### AWS Shield
What are DDOS attacks?
- distributed denial-of-service attack.
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
- Near real time visibility into attacks or events
- Integrates with AWS WAF
- Provides higher-level protections, network-and transport-layer protections, and automated application traffic monitoring
- Financial protection against DDoS related spikes in charges for EC2, elastic load balances, CloudFront, and Route 53
- Available globally on all CloudFront and Rout 53 edge locations
- Your web application can be hosted anywhere in the world and still be protected by AWS shield

### Amazon Inspector
Automated security assessment service for apps to find security issues and bring them to your attention. To know that the application complys with standards and compliance.
- Automatically assess for exposure, vulnerabilities, and deviations from best practices
- Generated detailed reports to help check for vulnerabilities
- Security teams can get reports validating that tests were performed
- Reduces risk of introducing security issues during deployment and developement
- Define standards and best practices OR choose the constantly updated AWS standards

### AWS Trusted Advisor
- Guides the provisioning of resources to follow best practices
- Scans infrastructures and advises you on how it is or is not following AWS best practices
- Based on five categories: cost optimization, performance, security, fault tolerance, service limits
- Provides customized action recommendations to meet best practices

**Seven core trusted advisor checks**
1. S3 bucket permissions
2. Security groups - specific ports unrestricted
3. IAM use
4. MFA on root account
5. EBS public snapshots
6. Relational database service (RDS) public snapshots
7. Service limits

**Full trusted advisor checks**
- More types of checks on top of core checks
- Notifications through weekly updates
- Set up automated actions in response to alerts using CloudWatch
- Programmatic access to scan results via API

### Amazon GuardDuty
- 24/7 threat detection service for the AWS cloud
- Monitors for malicious activity and unauthorized behavior
- Analyzes events to send actionable alrts to CloudWatch
- Uses machine learning, anomaly detection, and integrated threat intelligence to identify protential threats
- Easy to deploy
- Helps you take action immediately if a threat is found

### AWS Artifact
On-demand self-service portal to download AWS security and compliance documents and independent software vendor (ISV) compliance reports, our infrastructure needs to be compliant even though AWS itself is compliant. Develop and obtain documents to demonstrate compliance. Review, accept, and track status of AWS agreements specific to your organization's industry.

### Governance and compliance services
- CloudWatch
    - Observes and monitors application performance
    - Set alarms and automated actions to activate at predetermined thresholds to automatically mitigate potential issues
- CloudTrail
    - Generates audit trails of every action taken by a user, role, or AWS service
- Audit Manager
    - Automates evidence collection to generate audit-ready reports to prove system compliance for audits
- AWS Config
    - Provides detailed views of AWS resource configurations in your AWS account
    - Tracks how configurations and relationships between resources change over time
    - Monitors configuration settings and send alerts when a resource violates your rules

## Review
**AWS Security Services**
- AWS Systems Managers
- AWS WAF (Firewall)
- AWS Shield protects from DDoS attacks
- Amazon Inspector
- AWS Trusted Advisor
- Amazon GuardDuty
- AWS Artifact
- AWS CloudWatch
- AWS CloudTrail
- AWS Audit Manager
- AWS Config

**AWS Security Information**
- AWS Knowledge Center
- AWS Security Center
- AWS Security Blog
- AWS Marketplace