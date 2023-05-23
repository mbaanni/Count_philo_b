#!/bin/bash

script out ./philo $1 $2 $3 $4 $5

i=0
while [ $i -le $1 ]
do
	cat out | grep "eating" | grep " $i" | wc -l
	i=$(( $i + 1 ))
done
