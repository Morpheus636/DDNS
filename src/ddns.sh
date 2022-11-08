#!/bin/bash

CF_API_KEY=""
CF_EMAIL=""
CF_ZONE_ID=""
CF_RECORD_ID=""

ip_addr=$(curl -s "https://api.ipify.org")
dns_record=$(curl -X GET "https://api.cloudflare.com/client/v4/zones/$CF_ZONE_ID/dns_records/$CF_RECORD_ID" \
     -H "X-Auth-Email: $CF_EMAIL" \
     -H "X-Auth-Key: $CF_API_KEY" \
     -H "Content-Type: application/json")
dns_ip=$(jq --raw-output '.result.content')
dns_name=$(jq --raw-output '.result.name')
dns_type=$(jq --raw-output '.result.type')
dns_ttl=$(jq --raw-output '.result.ttl')

echo "Current external IP is $ip_addr, DNS IP is $gd_ip_addr"

if [ "$dns_ip_addr" != "$ip_addr" -a $ip_addr != "" ]; then
  echo "Diff detected. Updating Remote DNS Record from $dns_ip_addr to $ip_addr"
  curl -X PUT "https://api.cloudflare.com/client/v4/zones/$CF_ZONE_ID/dns_records/$CF_RECORD_ID" \
     -H "X-Auth-Email: $CF_EMAIL" \
     -H "X-Auth-Key: $CF_API_KEY" \
     -H "Content-Type: application/json" \
     --data "{\"type\":\"$dns_type\",\"name\":\"$dns_name\",\"content\":\"$id_addr\",\"ttl\":$dns_ttl}"
fi
