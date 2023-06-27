#!/bin/bash

echo "What is your name?"

read name

echo "How old are you?"

read Age

echo "Hello $name, you are $Age year's old. I hope you had good day cz you are my best friend ever!!!!"

sleep 3

echo "Calculating"

sleep 2

echo "Loading..."

sleep 1

getrich=$((( $RANDOM % 15 ) + $Age ))

echo "$name, you will become a millionaire when you are $getrich years old"
