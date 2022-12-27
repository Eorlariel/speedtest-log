# speedtest-log
Small script for continuous speedtests using [speedtest client](https://www.speedtest.net/)

WARNING: This scripts produces a lot of internet traffic and consumes a lot of internet speed if its used in high rates.

## Prerequisites
This script uses the speedtest client, so preinstall the [speedtest client](https://www.speedtest.net/apps/cli)

To use the command line tool the client must be executed once for every desired user to accept the licences.

## Installation
After downloading the repo, rename the config file to speedtest-log.conf:
```
mv speedtest-log-default.conf speedtest-log.conf
```

make the config and the script executable
```
chmod ug+x speedtest-log.conf speedtest-log.sh
```

edit the config file for your purpose with your favorite editor
```
nano speedtest-log.conf
OR
vim speedtest-log.conf
```

execute the speedtest-log script
```
./speedtest-log.sh
```

you may also use it in a cron job
