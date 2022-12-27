#! /bin/bash

baseDir=$(dirname $(realpath $0))

if [ -f "$baseDir/speedtest-log-default.conf" ]; then
  source "$baseDir/speedtest-log-default.conf"
fi

if [ -f "$baseDir/speedtest-log.conf" ]; then
  source "$baseDir/speedtest-log.conf"
fi

if [ -z "${FILE_PATH}" ]; then
  echo "FILE_PATH not set"
  exit 1
fi

if [ -z "${FILE_TYPE}" ]; then
  echo "FILE_TYPE not set"
  exit 1
fi

if ! [ -x "$(command -v speedtest)" ]; then
  echo "speedtest is not available"
  exit 1
fi

# Preparation of directory
dirPath=$(dirname ${FILE_PATH})
if [ ! -d "$dirPath" ]; then
  mkdir -p ${dirPath}
fi

# Completion of command
if [ ! -f "$FILE_PATH" ]; then
  fullSpeedtestCmd="speedtest --output-header -f ${FILE_TYPE} > ${FILE_PATH}"
else
  fullSpeedtestCmd="speedtest -f ${FILE_TYPE} >> ${FILE_PATH}"
fi

# Final execution
eval ${fullSpeedtestCmd}

echo "speedtest-log successfully executed and logged to: $FILE_PATH"

exit 0
