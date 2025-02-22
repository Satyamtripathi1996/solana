#!/usr/bin/env bash

set -ex
# pwd
source ./token.sh
if [[ -d .vercel ]]; then
  rm -r .vercel
fi

CONFIG_FILE=vercel.json
PROJECT_NAME=explorer
vercel_id=$vercel_id
echo "$vercel_id"
cat > "$CONFIG_FILE" <<EOF
{
  "name": "$PROJECT_NAME",
  "scope": "naveenmishra1197"
}
EOF

[[ -n $vercel_id ]] || {
  echo "VERCEL_TOKEN is undefined.  Needed for Vercel authentication."
  exit 1
}
# vercel deploy . --local-config="$CONFIG_FILE" --confirm --token "$vercel_id"
