#!/bin/bash
## Alessandro Blason
## - Send a message to telegram
## version 0.0.1
#################################################
ID=$1
MSG=$2
AGENTDVRURL=your server IP or address
CHATID=your telegram id
TOKEN=your bot token
APIUSER=AgentDVR API username
APIPWD=AgentDVR API password

curl -v -F chat_id=${CHATID} \
-F text="${MSG}" \
https://api.telegram.org/bot${TOKEN}/sendMessage