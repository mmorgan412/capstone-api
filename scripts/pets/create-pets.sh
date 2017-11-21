#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/pets"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "pet": {
      "name": "'"${NAME}"'",
      "license_number": "'"${LICENSE_NUMBER}"'",
      "breed": "'"${BREED}"'",
      "insurance_info": "'"${INSURANCE_INFO}"'",
      "vet": "'"${VET}"'"
    }
  }'

echo
