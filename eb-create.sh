#!/bin/bash

. properties.sh

eb create  "${ENVIRONMENT_NAME}" \
  --cname "${ENVIRONMENT_CNAME}" \
  --database \
  --database.username "${DATABASE_USERNAME}" \
  --database.password "${DATABASE_PASSWORD}" \
  --database.engine "${DATABASE_ENGINE}" \
  --elb-type "${ELB_TYPE}" \
  --platform "${PLATFORM}" 
  
 
eb setenv SERVER_PORT=5000 \
  SPRING_DATASOURCE_USERNAME="${DATABASE_USERNAME}" \
  SPRING_DATASOURCE_PASSWORD="${DATABASE_PASSWORD}" \
  SPRING_JPA_HIBERNATE_DDL_AUTO=update \
  SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.MySQL5Dialect \
  SPRING_DATASOURCE_URL="jdbc:${DATABASE_ENGINE}://${DATABASE_URL}:${DATABASE_PORT}/ebdb"


  