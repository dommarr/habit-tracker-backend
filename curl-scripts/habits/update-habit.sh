#!/bin/bash

curl "http://localhost:4741/habits/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "habit": {
      "habit_title": "'"${HABIT_TITLE}"'",
      "streak": "'"${STREAK}"'"
    }
  }'

echo
