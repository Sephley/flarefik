#!/bin/bash

getargs () {
    while getopts c
    do
        echo "enter your cloudflare email:"
        read -r CLOUDFLARE_EMAIL

        echo "enter your api key:"
        read -r CLOUDFLARE_API_KEY

        echo "enter your zone id"
        read -r ZONE_ID
    done
}

addrecord () {
    curl https://api.cloudflare.com/client/v4/zones/"$ZONE_ID"/dns_records \
        -H 'Content-Type: application/json' \
        -H "X-Auth-Email: $CLOUDFLARE_EMAIL" \
        -H "X-Auth-Key: $CLOUDFLARE_API_KEY" \
        -d '{
          "content": "<traefik-proxy-ip>",
          "type": "CNAME"
        }'
}

main () {
    getargs
    addrecord
}

main