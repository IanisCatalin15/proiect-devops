#!/bin/bash
echo "Spatiu pe disk:"
DISK=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')
echo "Folosit: $DISK%"

if [ $DISK -gt 5 ]; then
    echo "ATENTIE: Spatiu pe disk critic!"
else
    echo "Spatiu pe disk OK"
fi
