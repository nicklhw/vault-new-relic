#!/bin/bash 

customer=9
count=0
i=0

while [ $customer -lt 2000 ]; do
	vault secrets enable -path=customer_$customer -version=2 kv
	while [ $count -lt 5 ]; do
		vault kv put customer_$customer/$count @acme.json
		count=$[$count + 1]
		sleep 5
	done	
	customer=$[$customer + 1]
	count=0
done