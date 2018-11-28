#!/bin/bash

#TITLE='first entry', SUBJECT='greating', TOKEN="BAhJIiU1MjE0OWVjMWRiOGZkOTU0MTVlOWY1MTdiYmUzZWZiOAY6BkVG--43c60092a3c12901a9710322b22b78cad39fe7d1" sh curl-scripts/auth/create-journal.sh

curl "http://localhost:4741/examples" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
