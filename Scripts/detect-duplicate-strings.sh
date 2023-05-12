#!/bin/bash

echo "Checking for duplicate string definition..."

c=`expr $SCRIPT_INPUT_FILE_COUNT - 1`

for i in $(seq 0 $c)
    do

    var="SCRIPT_INPUT_FILE_$i"
    FILENAME="${!var}"

    echo "Checking $FILENAME"

    DUPES=`cut -d'=' -f1 "$FILENAME" | sort | uniq -d`
    COUNTER=0

    while read -r line; do
        if [[ $line == "\""* ]] ;
        then
            echo "error: $line used multiple times in $FILENAME"
            ((COUNTER++))
        fi
    done <<< "$DUPES"

    if [[ "$COUNTER" -gt 0 ]];
    then
        echo "EXITING"
        exit 1
    else
        echo "ALL GOOD"
    fi

done
