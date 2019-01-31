#!/bin/bash
# Authors : Jared Marks
# Date: 1/30/2019

#Problem 1 Code:
#Reading in the reg expression and the file name
echo "Enter a regular expression: "
read regExpres 
echo "Enter target file: "
read targFile
echo "Regular expression: ${regExpres}"
echo "Target file: ${targFile}"
#Call grep to find the reg expression in file
grep $regExpres $targFile

#Problem 3 Code:
#Phone numbers in file
echo -n "Phone number count: "
grep -o '[0-9]\{3\}[-]\{1\}[0-9]\{3\}[-]\{1\}[0-9]\{4\}' $targFile |  wc -l

#Number of emails
echo -n "Email count: "
grep '@' $targFile  | wc -l

#303 numbers and storing into phone_results.txt
echo "Stored numbers with 303 in phone_results.txt"
grep -o '303[-]\{1\}[0-9]\{3\}[-]\{1\}[0-9]\{4\}' $targFile 
grep -o '303[-]\{1\}[0-9]\{3\}[-]\{1\}[0-9]\{4\}' $targFile > phone_results.txt

#finding @geocities.com emails and storing into email_results.txt
echo "Stored emails with @geocities.com in email_results.txt"
grep '@geocities\.com' $targFile 
grep '@geocities\.com' $targFile > email_results.txt

#Storing the commandline grep into command_results.txt
echo "Stored results of the command line into command_results.txt"
grep -E $1 $2 
grep -E $1 $2 > command_result.txt
