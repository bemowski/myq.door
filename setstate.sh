
# PUT /api/v4/deviceattribute/putdeviceattribute

#{
#  "MyQDeviceId": integer,
#  "AttributeName": "desireddoorstate",
#  "AttributeValue": 1
#}

if [ -z $1 ]
then 
   echo "usage: setstate.sh [0,1]"
   echo "  0=close"
   echo "  1=open"
   exit 1
fi

. ./common.sh

SECURITY_TOKEN=$(cat login-result.json|jq -r .SecurityToken)

DEVICE_ID=$(cat devices-result.json|jq .Devices[1].MyQDeviceId)

echo "{\"MyQDeviceId\": $DEVICE_ID,\"AttributeName\": \"desireddoorstate\",\"AttributeValue\": $1}">desired-state.json

cat desired-state.json
echo ""

CURL="curl -v -X PUT -d @desired-state.json -H SecurityToken:$SECURITY_TOKEN $HEADERS $BASE_URL/api/v4/deviceattribute/putdeviceattribute"

echo $CURL

$CURL


