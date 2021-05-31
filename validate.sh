#!/bin/bash

x=`ls -d ./CASA2/*/`
for i in $x;
do
path=$(echo $i | tr -d '\r')
cd "${path}"
pwd
actual=`cat concentration.txt`
manual=`cat manual-concentration.txt`
echo "Actual: $actual" 
echo "Manual: $manual"
cd ../..
done


