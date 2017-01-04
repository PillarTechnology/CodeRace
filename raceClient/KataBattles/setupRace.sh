#!/bin/bash

if [[ $# != 2 ]];
then
  echo "Usage: $0 <kataDirectory> racer[1-5]"
  exit 1;
fi

KATA=$1

RACER=$2

# Cleanup
./cleanup.sh

# start up the race.sh for the new kata
cd $KATA
TIMESTAMP=`date "+%y%m%d%H%M%S"`
./race.sh $RACER > race-${TIMESTAMP}.log 2>&1 &


