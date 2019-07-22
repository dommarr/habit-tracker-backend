#!/bin/bash

curl "http://localhost:4741/habits" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  #--header "Authorization: Token token=${TOKEN}" \
  --data '{
    "habit": {
      "habit_title": "'"${HABIT}"'",
      "streak": "'"${STREAK}"'"
    }
  }'

echo
