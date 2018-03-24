
. ./common.sh

SECURITY_TOKEN=$(cat login-result.json|jq -r .SecurityToken)

DEVICE_ID=4390819
DOOR_STATE_ATTRIBUTE=doorstate

CURL="curl -H SecurityToken:$SECURITY_TOKEN $HEADERS $BASE_URL/api/v4/userdevicedetails/get"

echo $CURL

$CURL>devices-result.json

DEVICE_ID=$(cat devices-result.json|jq .Devices[0].MyQDeviceId)

echo "DeviceId: $DEVICE_ID"
