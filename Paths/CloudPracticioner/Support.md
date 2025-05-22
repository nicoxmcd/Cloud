# Billing, Pricing, and Support
## Introduction

## Billing and Pricing
### AWS Billing Dashboard
- Estimate and plan for your AWS costs
- Simplify account with multiple AWS accounts through consolidated billing
- Receive alerts for service usage thresholds
- Visualize monthly chargeable costs and bills
- Invoices generated after monthyl billing period or when subscriptions or one-time purchases are made

### Types of Charges for purchasing computing resources
There's the pay-as-you-go pricing model. Spinning up virtual servers instead of purchasing a physical server.
Different services have different charging models.  Amazon EC2 charges per hour of use. There are three fundamental ways AWS charges:

**Compute**
- Pay as you go (on-demand instances)
- Save when you commit (reserved instances) (Example: saving on a gym membership by commiting for the full year)
- Save when you commit (Savings plans) (booking a certain amount of computing power)
- Take advantage of unused AWS capacity (spot instances) (up to 90% off of on-demand pricing, but it would be a flexible schedule)
- Save by using your own licenses and utilizing dedicated hardware (EC2 dedicated hosts)
- Run Amazon EC2 instances on dedicated hardware (dedicated instances) (provides each customer with dedicated hardware so a single piece of hardware would be isolated for that customer, could solve compliance requirements sometiems)
- Reserve compute capacity in advance (capacity reservations)
- Pay less by using more

**Storage**
Amazon S3 charges per GB of usage.

**Data Transfer**
Data going INTO AWS is usually free, but outbound data is scharged depending on which region the data starts from and leaves from. These charges vary from region to region and cross availability zones.

### AWS Free Tier
Try many services for free for 12 months for most services. But as the expiration date of the free tier approaches, you'll be notified by AWS and you'll be responsible for manaually turning down or deleting the services you don't want to be charged for.
**Always Free**
These services as always free to use, but there are usage limits.

**12 Months**
Free for use, with usage limit, for 12 months after initial sign-up date: these limits might be use time, requests, storage, number of characters, number of actions per month.

**Trials**
Most are less than 12 months and have stricter limits, common limitations are use time, number of requests, use of space.

## Billing, Budget, and Cost Management
### AWS Budget and cost management resources
**AWS Budgets**
- Set up custom budgets to track your AWS resource costs and usage
- Send alerts when you exceed thresholds (no surprise bills)
- Respond with custom actions to prevent outages, insufficient resource use, and lack of coverage
- You can opt to receive AWS budget reports daily, weekly, or monthly via email
- Visualize costs before you spend

**AWS Cost Explorer**
- Analyze AWS resource usages after the fact and create usage forecast to project future AWS costs
- Create custom reports based on usage to analyze data at high or granular levels

**AWS Cost and Usage Reports AWS CUR**
- Provide your AWS cost and usage data as a report to help understand cost drivers
- Identify ways to optimize monthly AWS usage bills
- Provide metadata on AWS services, pricing, credits, fees, taxes, discounts, cost categories, reserved instances, and savings plans
- Utilize AWS cost allocation tags on reports (AWS generated, or user generated) these tags conssit of a key and value
- Integrate data with Amazon Athena, Amazon Redshift, or Amazon QuickSigt for deep analyses

**AWS Billing Conductor**
- Analyze your organization or customers' spending and bill for resource usage based on your defined rates
- Generate AWS costs and usage reports for each billing group

**AWS Pricing Calculator**
- Located at calculator.aws
- Replaced the AWS total cost of ownership calculator
- Takes estimated resource usage you input from current infrastructure and providkes estimated costs for running your workloads on AWS clouds
- Create a cost benefit analysis for potentially moving infrastructure onto AWS cloud

### Consolidated billing
**Multiple AWS Accounts**
Maybe the dev team wants to split up their production and testing environments, or the marketing team wants a specific marketing website, or if the organization wants to set up different projects, then solidating would keep all the billing transparent.

**AWS Consolidated Billing**
- Allows an organization to create a payer AWS account to view andn pay combined billing charges for all linked accounts in an organization:
- Independent account, but can't use any other services
- Cannot deploy services into the linked accounts
- All resource usage becomes consolidated as usage from one large entity- organization may be eligible for volume discounts because of the combined usage
- Must use for the account department and to take advantage of pricing discounts, and its free

## Support and Billing Resources
### AWS Support Plans
Depending on the level of infrastructure, needs, budget, level of technical supports; these five plans can range. The support plan costs are in addition to your resource usage bill.

**Basic**
- For experimenting or testing AWS
- Pairs well with AWS Free Tier
- Free (included with all AWS accounts)
- Account and billing inquiries
- Service quota increase requests
- Access to support forums and documentation
- Access to AWS Health dashboard and AWS trusted advisor health checks
- Great for a solo developer, newbie, or getting your feet wet, or in the process of evaluating cloud platforms

**Developer**
- For experimenting or testing in AWS
- More customized support, like support tickets
- But may not be enough for production costs
- Minimum spend of $29 or 3% monthly of AWS charges
- Everything in Basic Support plan
- Access to best-practice guidance and building-block architecture support
- Prioritized response on AWS re:Post, access to AWS Support App in Slack
- Unlimited number of support cases via one primary contact (root user) with business-hour email access to cloud support associates
- Support response times are 24 hours or less for general guidance, 12 hours or less for system impaired
- Access to support automation workflows (SAW) Self service automations created by AWS support team  with AWSSupport prefix in AWS Support self-service runbooks
- Runbooks: help you proactively monitor and identify network issues, collect and analyze logs, and troubleshoot common issues with AWS resources

**Business**
- Minimum recommended plan for production workloads in AWS
- Production workloads are the sites or apps that customers or users can see
- Minimum spend of $100 per month
- 10% of monthly charges for $0-10,000 spent
- 7% of monthly charges for $10,000-$80,000 spent
- 5% of monthly charges for $80,000-$250,000 spent
- 3% of monthly charges for over $250,000 spent
- Minimum recommended for those with production workloads in AWS
- Everything in Developer Support Plan
- Access to AWS Trusted Advisor best practice checks along with basic health checks
- Access to AWS Support API to automate support case management with AWS Trusted Advisor and Support Center
- Access to use-case guidance on how to use AWS products and services to support your organization needs 24/7
- Access to support automation workflows with prefixes AWSSupport AND AWSPremiumSupport
- Infrastructure Event Management (for an additional fee)
- Support response times: less than 24 hours for general guidance, less than 12 hours for systems impaired, less than 4 hours for production system impaired, less than 1 hour for production system down

**Enterprise On-Ramp**
- For production and or business-critical-workloads in AWS
- Minimum spend of $5,500 or 10% of monthly charges
- For those with production and or business critical workloads in AWS
- Everything in business support plan
- Access to consultative application architecture guidance to see how AWS services and resources can work together
- Access to short-term engagement with AWS support to receive architectural and scaling guidance for infrastructure event management (once a year)
- Access to a pool of technical account managers (TAMs) for support cases, proactive guidance, general use case support, etc. as well as white-gloved case routing via the concierge support team
- Support response times: less than 24 hours for general guidance, less than 12 hours for system impaired, less than 4 hours for production system impaired, less than 1 hour for production system down, and less than 30 minutes for business critical system down

**Enterprise**
- For business and or mission-critical workloads in AWS
- minimum spend of $15,000
- 10% of monthly charges for $0-$150,000 spent
- 7% of monthly charges for $150,000-$500,000
- 5% of monthly charges for $500,000-$1,000,000
- 3% of monthly charges for over $1,000,000
- Everything from enterprise-on-ramp
- Infrastructure event management (not limited to once a year)
- Access to proactive workshops, reviews, and deep dives
- AWS incident detection and response service available for additional fee
- Assigned a technical account manager (TAM)
- Receive prioritized recommendations from AWS Trusted Advisor Priority
- Access to online self-paced labs for employee training
- Support response times: less than 24 hours for general guidance, less than 12 hours for system impaired, less than 4 hours for production system impaired, less than 1 hour for production systems down, and less than 15 minutes for business or mission critical system down

### Finding AWS Resources
Before signing up for a hefty plan for hiring a consultant, use the free documentation available on AWS.
- AWS Whitepapers and guides
- AWS blog
- AWS Documentaion
- AWS re:Post
- AWS Knowledge Center
- AWS Partner networks (look into this)
- AWS Marketplace (selling templates)
- AWS Support plans
- AWS Trust and safety team
- AWS Support center
