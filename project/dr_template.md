# Infrastructure

## AWS Zones
Identify your zones here

Zones for east-2:
 aws ec2 describe-availability-zones --region us-east-2 | grep ZoneName
            "ZoneName": "us-east-2a",
            "ZoneName": "us-east-2b",
            "ZoneName": "us-east-2c",

Zones for west-1:
aws ec2 describe-availability-zones --region us-west-1 | grep ZoneName
            "ZoneName": "us-west-1a",
            "ZoneName": "us-west-1b",


## Servers and Clusters

### Table 1.1 Summary
| Asset      | Purpose           | Size                                                                   | Qty                                                             | DR                                                                                                           |
|------------|-------------------|------------------------------------------------------------------------|-----------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Asset name | Brief description | AWS size eg. t3.micro (if applicable, not all assets will have a size) | Number of nodes/replicas or just how many of a particular asset | Identify if this asset is deployed to DR, replicated, created in multiple locations or just stored elsewhere |
| S3 east      Store terraform data of the infrastructure                                                 | 1                                                                 Just created in region east-2 with default values
| EC2 east-2 | DB server         | t3.medium                                                              | 1                                                               | Database server for web
| EC2 east-2 | WEB server        | t3.micro                                                               | 1                                                               | Web server for grafana, DB and flask application
| EC2 west-1 | DB server         | t3.medium                                                              | 1                                                               | Database server for web
| EC2 west-1 | WEB server        | t3.micro                                                               | 1                                                               | Web server for grafana, DB and flask application
| git repo   | Configuration     |                                                                        | 1                                                               | Repo for configuration of the infrastructure

### Descriptions
More detailed descriptions of each asset identified above.

## DR Plan
### Pre-Steps:
List steps you would perform to setup the infrastructure in the other region. It doesn't have to be super detailed, but high-level should suffice.
- EC2 AMI instance deployed on east-1.
- AMI EC2 instance needs to be copied to east-2.
- AMI EC2 instance needs to be copied to west-1.
- Create one uniq S3 buckets in both east-2 and west-1.
- Generate auth keys for EC2 in both east-2 and west-1.
- Deploy infrastructure using Terraform.
- Setup kubernetes configuration including arn.
- Check pods are running.


## Steps:
You won't actually perform these steps, but write out what you would do to "fail-over" your application and database cluster to the other region. Think about all the pieces that were setup and how you would use those in the other region
- Delete the DB cluster to failover to the other region.

