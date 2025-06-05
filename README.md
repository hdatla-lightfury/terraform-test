#LGF-AWS-HIGH-LEVEL-INFRA
## Should Broadly Include the following
## Organizational Strcuture
## Overall [NEW] IAM policies for users and services at the root level.
## Overall [NEW] Network infra for root level
## OVerall [NEW] Security groups for root level
## Any resources that belong in the root and shared by all, rather than the account level and isolated resources.
## For now, the scope is just organizations and Overall IAM policies for users and services at the root level. 
## Will visit this back once we want to move all our services in the root account to the respective accounts.

## we expect individual terraform infra provisioning modules for backend/other services to be in the respective services that you develop with appropriate permissions.


