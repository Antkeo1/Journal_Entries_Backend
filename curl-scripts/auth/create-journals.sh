#!/bin/bash

curl "http://localhost:4741/journals" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "journal": {
      "title": "'"${TITLE}"'",
      "subject": "'"${SUBJECT}"'"
      "text": "'"${TEXT}"'"
    }
  }'

echo
