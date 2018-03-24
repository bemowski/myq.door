

# References

https://github.com/chemdrew/MyQ-LiftMaster-Chamberlain-API

https://github.com/Einstein42/myq-garage/blob/master/myq-garage.py


# Usage

You must call login.sh, and deviceinfo.sh before using getstate.sh, open.sh, or close.sh

## Login

    ./login.sh

### login.json

requires ./login.json - 

Format:
    {"username":"user@gmail.com","password":"##########"}

## Get device id

    deviceinfo.sh


## Get Door State

    ./getstate.sh

## Set Door State

    ./open.sh

    ./close.sh


