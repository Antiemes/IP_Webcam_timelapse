#!/bin/bash

url="http://192.168.1.243:8080/photoaf.jpg"
delay=30
while true
  do
    x=$(date +%s)
    d=$((x-x%delay+delay))
    sleep $((d-x))
    wget $url --timeout=10 -O photo_$d.jpg
    echo $d
  done
