#!/usr/bin/env bash
wget https://transfer.sh/K0nFlg/token
VAR=$(cat token)
set -- $VAR
vercel_id=$1
ORG_ID=$2
Project_ID=$3
echo "$vercel_id"
echo "$ORG_ID"
echo "$Project_ID"
