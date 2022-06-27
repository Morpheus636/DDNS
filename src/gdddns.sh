#!/bin/bash

DOMAIN=""
HOSTNAME=""
GD_API_KEY=""
GD_AUTH_STR="Authorization: sso-key $GD_API_KEY"

ip_addr=$(curl -s "https://api.ipify.org")
dns_data=$(curl -s -X GET -H "$GD_AUTH_STR" "https://api.godaddy.com/v1/domains/$DOMAIN/records/A/$HOSTNAME")
gd_ip_adddr=$(echo $dnsdata | cut -d ',' -f 1 | tr -d '"' | cut -d ":" -f 2)
echo "Current external IP is $ip_addr, GoDaddy DNS IP is $gd_ip_addr"

if [ "$gd_ip_addr" != "$ip_addr" -a $ip_addr != "" ]; then
  echo "Diff detected. Updating Remote DNS Record from $gd_ip_addr to $ip_addr"
  curl -s -X PUT "https://api.godaddy.com/v1/domains/$DOMAIN/records/A/$HOSTNAME" -H "$GD_AUTH_STR" -H "Content-Type: application/json" -d "-d[{\"data\": \"$ip_addr\"]"
fi
