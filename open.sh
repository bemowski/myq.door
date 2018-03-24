
# PUT /api/v4/deviceattribute/putdeviceattribute

#{
#  "MyQDeviceId": integer,
#  "AttributeName": "desireddoorstate",
#  "AttributeValue": 1
#}


. ./common.sh

SECURITY_TOKEN=$(cat login-result.json|jq -r .SecurityToken)

DEVICE_ID=$(cat devices-result.json|jq .Devices[0].MyQDeviceId)

echo "{\"MyQDeviceId\": $DEVICE_ID,\"AttributeName\": \"desireddoorstate\",\"AttributeValue\": 0}">desired-state.json

echo "Open: $JSON"


CURL="curl -v -X PUT -d @desired-state.json -H SecurityToken:$SECURITY_TOKEN $HEADERS $BASE_URL/api/v4/deviceattribute/putdeviceattribute"

echo $CURL

$CURL


