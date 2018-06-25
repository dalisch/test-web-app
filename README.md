# test-web-app
## Overview
This project is a simple [Spring Boot](https://spring.io/projects/spring-boot) application intended to 
demonstrate some deployment automation capabilities of AWS Elastic Beanstalk.  

## Application code build process
The application code is taken from the public Spring REST app example code [here](https://github.com/spring-guides/gs-accessing-data-rest.git); the documentation there can be used to interact with the application to test the database 
connection of the app and perform CRUD operations on the 'People' objects in the database.

If desired, the user can (re)generate the deployable jar file by running `./gradlew build` in the 
project root directory.  This is not necessary, however, as the jar is already generated for convenience here.

## Deployment Process
To deploy the app, perform the following:
1. in `properties.sh`, change the values of `ACCOUNTID` and `KEYNAME` to the AWS account number and the key name for that
account to be used to interact via the Elastic Beanstalk CLI.  
2. generate a local RSA ssh keypair with the same name as `KEYNAME` to be used to interact with AWS
3. replace the value `  default_ec2_keyname: AKIAJ74PSHZK4GJOFHDA` in `.elasticbeanstalk/config.yml` with the new value for `KEYNAME`
4. from the project root directory, execute `bash eb-create.sh` to create the EC2 stack and deploy the Spring Boot application jar to the generated infrastructure
