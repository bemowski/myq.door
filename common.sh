

BASE_URL=https://myqexternal.myqdevice.com


HEADERS="-H MyQApplicationId:NWknvuBd7LoFHfXmKNMBcgajXtZEgKUh4V7WNzMidrpUUluDpVYVZx+xT4PCM5Kx"
HEADERS="$HEADERS -H Content-Type:application/json"
HEADERS="$HEADERS -H BrandId:Chamberlain"
HEADERS="$HEADERS -H ApiVersion:4.1"
HEADERS="$HEADERS -H Culture:en"
HEADERS="$HEADERS -H User-Agent:Chamberlain/3.73"

echo "Login: "
cat login-result.json
echo ""

echo "HEADERS: $HEADERS"

DESIRED_STATE_OPEN=1
DESIRED_STATE_CLOSED=0

# Ref bash arrays:
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_10_02.html
# echo ${GARAGE_STATES[2]}
GARAGE_STATES=('' 'Open' 'Closed' 'Stopped' 'Opening' 'Closing')

echo "closed: ${GARAGE_STATES[2]}"


