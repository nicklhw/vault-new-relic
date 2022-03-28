#!/bin/bash

count=0
i=0

while [ $count -lt 100 ]; do
	vault token create -ttl=5m
	sleep 10
	count=$[$count + 1]
done
