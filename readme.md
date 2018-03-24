

# References

https://github.com/chemdrew/MyQ-LiftMaster-Chamberlain-API

https://github.com/Einstein42/myq-garage/blob/master/myq-garage.py


# Usage

You must call login.sh, and deviceinfo.sh before using getstate.sh, open.sh, or close.sh

## Login

```bash
./login.sh
```

### login.json

requires ./login.json - 

Format:
```json
{"username":"user@gmail.com","password":"##########"}
```

## Get device id

``` bash
deviceinfo.sh
```

## Get Door State

```bash
./getstate.sh
```

## Set Door State

Close Door:

```bash
setstate.sh 0
```

Open Door:
```bash
setstate.sh 1
```


# Cron

After individual bits are working, wrote this:

```bash
echo "Starting close garage door."
./login.sh
./deviceinfo.sh
./setstate.sh 0
sleep 45
./getstate.sh
echo 
echo "Garage Door should be closed"
```

```
0 21 * * * /home/bemo/bin/close.garage.door.sh 2>&1 >> /home/bemo/cron/garage.log

```


