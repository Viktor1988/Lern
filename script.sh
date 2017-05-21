#!/bin/bash
source ./decode.sh
http --form POST https://sense.alfabank.ru/prod/oauth2/register client_id=sense-app scope='openid sense-bank' card_number=$CARD_NUMBER card_exp=$EXPDATE phone_number=$PHONE_NUMBER
curl -i 'http https://sense.alfabank.ru/gateway/oauth/register code==$CODE username==$USERNAME reference==$REFERENCE'
http https://sense.alfabank.ru/api/accounts 'Authorization: Bearer $TOKEN'
