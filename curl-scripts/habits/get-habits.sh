#!/bin/bash

curl "http://localhost:4741/habits" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
