The list of aws_service_access_principals

Service	Principal name (string)
AWS Control Tower	controltower.amazonaws.com
AWS Security Hub	securityhub.amazonaws.com
AWS CloudTrail	cloudtrail.amazonaws.com
AWS Config	config.amazonaws.com
AWS IAM Access Analyzer	access-analyzer.amazonaws.com
AWS Service Catalog	servicecatalog.amazonaws.com
AWS SSO (IAM Identity Center)	sso.amazonaws.com

The ones we wantr to start with

Service Name	Principal Name	Why?
AWS CloudTrail	cloudtrail.amazonaws.com	Centralized logging of API calls across accounts.
AWS Config	config.amazonaws.com	Configuration recording and compliance management.
AWS Security Hub	securityhub.amazonaws.com	Centralized security posture management.
IAM Access Analyzer	access-analyzer.amazonaws.com	Helps find unintended access (IAM best practices).
AWS SSO

We will add some other stuff like as we deem fit as we go along developing our applications.