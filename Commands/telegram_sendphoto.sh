#!/bin/bash
## Alessandro Blason
## - Send a photo with caption
## version 0.0.1
#################################################

## UPDATE THESE VARIABLES 
##AGENTDVRURL=your server IP or address
CHATID=your telegram id
TOKEN=your bot token
##APIUSER=AgentDVR API username
##APIPWD=AgentDVR API password
#################################################

ID=$1
MSG=$2
BASE64IMAGE=$3
##curl -v -u ${APIUSER}:${APIPWD} "http://${AGENTDVRURL}:8090/grab.jpg?oid=${ID}&size=1280x720&maintainAR=true" > /agent/Commands/grabs/grab${ID}.jpg
##curl -v -F chat_id=${CHATID} \
##-F photo=@/agent/Commands/grabs/grab${ID}.jpg \
##-F caption="${MSG}" \
##https://api.telegram.org/bot${TOKEN}/sendPhoto
echo ${BASE64IMAGE} > /AgentDVR/Commands/grabs/grab64_${ID}.jpg
base64 --decode /AgentDVR/Commands/grabs/grab64_${ID}.jpg > /AgentDVR/Commands/grabs/grab64d_${ID}.jpg
curl -v -F chat_id=${CHATID} \
-F photo=@/AgentDVR/Commands/grabs/grab64d_${ID}.jpg \
-F caption="${MSG}" \
https://api.telegram.org/bot${TOKEN}/sendPhoto
