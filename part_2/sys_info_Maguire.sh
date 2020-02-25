#!/bin/bash

filename='Maguire_sys_info.txt'
printf "\n\n" >> $filename

time=`date | awk '{print $4}'`
printf "\n\nThe time is:\n" >> $filename
printf $time >> $filename

dayYear=`date | awk '{print $2, $3, $6}'`
printf "\n\nThe date is:\n" >> $filename
printf "$dayYear" >> $filename

printf "\n\nThe users currently online are:\n" >> $filename
who >> $filename

printf "\n\nThe system uptime is:\n" >> $filename
uptime >> $filename
