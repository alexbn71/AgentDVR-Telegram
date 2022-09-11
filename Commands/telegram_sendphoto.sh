#!/bin/bash
## Alessandro Blason
## - Send a photo with caption
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
curl -v -u ${APIUSER}:${APIPWD} "http://${AGENTDVRURL}:8090/grab.jpg?oid=${ID}&size=320x240" > /agent/Commands/grabs/grab${ID}.jpg
curl -v -F chat_id=${CHATID} \
-F photo=@/agent/Commands/grabs/grab${ID}.jpg \
-F caption="${MSG}" \
https://api.telegram.org/bot${TOKEN}/sendPhoto