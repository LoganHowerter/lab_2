#!/bin/bash
# Author : Sky Howerter
# Date: 1/31/2019
#Problem 1 code:
echo "Enter a regular expression: "
read regex
echo "Enter a file name: "
read flnm
echo "number of phone #s:"
grep -c '[0-9]\{3\}[-]\?[0-9]\{3\}[-]\?[0-9]\{4\}' $flnm
echo "number of emails:"
grep -c '@' $flnm
echo "all (303) phone numbers output to phone_results.txt"
grep "303-" $flnm  > phone_results.txt
echo "all geocities.com emails output to email_results.txt"
grep "@geocities.com" $flnm > email_results.txt
echo "all line matches for regular expression output to command_results.txt"
grep $regex $flnm > command_results.txt