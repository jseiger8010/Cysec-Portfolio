#!/bin/bash

echo "what day?: "
read day
echo "What hour?: "
read hour
echo "AM or PM?: "
read AP

grep -i "${hour}:00:00 ${AP}" ${day}_Dealer_schedule | awk '{print $1, $2, $5, $6}' 
