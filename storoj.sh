#!/bin/bash

SERVER="google.com"
LOG="server.log"

ping -c 1 $SERVER > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "$(date): $SERVER is UP" >> $LOG
else
    echo "$(date): $SERVER is DOWN" >> $LOG
fi
