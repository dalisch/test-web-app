#!/bin/bash

ACCOUNTID=############
KEYNAME=###############
REGION=us-west-2
APP_NAME="${ACCOUNTID}-test-webapp"
DOMAIN="${APP_NAME}.${REGION}.elasticbeanstalk.com"
PLATFORM=java-8
ELB_TYPE=classic
ENVIRONMENT_NAME=test-webapp-env
ENVIRONMENT_CNAME="${ACCOUNTID}-test-webapp"
S3_BUCKET="elasticbeanstalk-${REGION}-${ACCOUNTID}"

# DB Connection
DATABASE_URL=aa1kzwq36t9nxra.cqzeag3pinrq.us-west-2.rds.amazonaws.com
DATABASE_PORT=3306
DATABASE_USERNAME=dbadmin
DATABASE_PASSWORD=dbpassword
DATABASE_ENGINE=mysql
