#!/bin/bash
## Alessandro Blason
## - Send a photo with caption
## version 0.0.1
#################################################

## UPDATE THESE VARIABLES 
CHATID=your telegram id
TOKEN=your bot token
#################################################

ID=$1
MSG=$2
BASE64IMAGE=$3
echo ${BASE64IMAGE} > /AgentDVR/Commands/grabs/grab64_${ID}.jpg
base64 --decode /AgentDVR/Commands/grabs/grab64_${ID}.jpg > /AgentDVR/Commands/grabs/grab64d_${ID}.jpg
curl -v -F chat_id=${CHATID} \
-F photo=@/AgentDVR/Commands/grabs/grab64d_${ID}.jpg \
-F caption="${MSG}" \
https://api.telegram.org/bot${TOKEN}/sendPhoto
