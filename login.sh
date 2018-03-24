
. ./common.sh

CURL="curl -v -d @login.json $HEADERS $BASE_URL/api/v4/User/Validate"

echo $CURL

$CURL >./login-result.json

cat login-result.json
echo ""

SECURITY_TOKEN=$(cat login-result.json|jq -r .SecurityToken)

echo "SecurityToken - $SECURITY_TOKEN"

