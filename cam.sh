#!/bin/bash

while true
  do
    x=$(date +%s)
    d=$((x-x%10+10))
    sleep $((d-x))
    wget "http://192.168.1.243:8080/photoaf.jpg" --timeout=3 -O photo_$d.jpg
    echo $d
  done
