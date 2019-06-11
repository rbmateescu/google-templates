#!/bin/bash

set -x
PROJECT_ID=`echo $GOOGLE_CREDENTIALS | jq --raw-output '.project_id'`
jq -n --arg project_id "$PROJECT_ID" '{"project_id":$project_id}'