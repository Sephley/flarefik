#!/bin/bash

addrecord () {
    # shellcheck disable=SC2016
    echo "enter the subdomain you would like to use eg. name from name.domain.com:"
    read -r NAME
    curl https://api.cloudflare.com/client/v4/zones/<zone-id>/dns_records \
        -H 'Content-Type: application/json' \
        -H 'X-Auth-Email: <your-email>' \
        -H 'X-Auth-Key: <your-global-api-key>' \
        -d '{
          "name": "'"$NAME"'",
          "content": "ip-or-hostname-of-traefik-host",
          "type": "CNAME"
        }'
}

main () {
    addrecord
}

main