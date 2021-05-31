#!/bin/bash

parent=/home/momen/Desktop/momen/CASA
x=`ls  -d ./*`
for i in $x;
do
#cd "$(dirname "${i}")"
cd "${i}"
found=$(ls Result.txt)
cat Result.txt|grep Concen|grep -Eo '[0-9]+([.][0-9]+)?'>concentration.txt
cd ..
#echo $(dirname "${i}")
#found=$(ls *MAN*.txt)
if [ -z "$found" ]
then
echo "error"
fi
done

