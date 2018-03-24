
. ./common.sh

SECURITY_TOKEN=$(cat login-result.json|jq -r .SecurityToken)

DEVICE_ID=$(cat devices-result.json|jq .Devices[1].MyQDeviceId)

DOOR_STATE_ATTRIBUTE=doorstate

echo "DeviceId: $DEVICE_ID"

#MyQDeviceTypeAttributeId=322

CURL="curl -v -H SecurityToken:$SECURITY_TOKEN $HEADERS $BASE_URL/api/v4/deviceattribute/getdeviceattribute?AttributeName=${DOOR_STATE_ATTRIBUTE}&MyQDeviceId=${DEVICE_ID}"

echo $CURL

$CURL > doorstate-result.json
cat doorstate-result.json
echo ""

STATE_INT=$(cat doorstate-result.json|jq -r .AttributeValue)

echo "State int: $STATE_INT"
echo "State: ${GARAGE_STATES[$STATE_INT]}"

