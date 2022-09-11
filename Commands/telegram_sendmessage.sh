#!/bin/bash
## Alessandro Blason
## - Send a message to telegram
## version 0.0.1
#################################################

## UPDATE THESE VARIABLES 
AGENTDVRURL=your server IP or address
CHATID=your telegram id
TOKEN=your bot token
APIUSER=AgentDVR API username
APIPWD=AgentDVR API password
#################################################

ID=$1
MSG=$2
curl -v -F chat_id=${CHATID} \
-F text="${MSG}" \
https://api.telegram.org/bot${TOKEN}/sendMessage