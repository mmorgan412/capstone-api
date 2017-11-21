#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/pets"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "pet": {
      "name": "'"${NAME}"'",
      "license_number": "'"${LICENSE_NUMBER}"'"
    }
  }'

echo
