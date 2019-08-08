#!/bin/bash

set -x
PROJECT_ID=`echo $GOOGLE_CREDENTIALS | jq --raw-output '.project_id'`
#PROJECT_ID=`gcloud compute regions list | sed -n 2p | awk '{print $1;}'`
#echo $PROJECT_ID
jq -n --arg project_id "$PROJECT_ID" '{"project_id":$project_id}'