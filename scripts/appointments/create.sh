#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appointments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "appointment": {
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'",
      "description": "'"${DESCRIPTION}"'",
      "cost": "'"${COST}"'",
      "notes": "'"${NOTES}"'",
      "pet_id": "'"${PET_ID}"'"
    }
  }'

echo
