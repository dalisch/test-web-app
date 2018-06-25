#!/bin/bash

. properties.sh

eb init \
  --keyname "${KEYNAME}" \
  --platform "${PLATFORM}" \
  --region "${REGION}"
