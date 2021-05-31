#!/bin/bash
parent=/home/momen/Desktop/momen/CASA
x=`ls  -d ./*`
for i in $x;
do
#cd "$(dirname "${i}")"
cd "${i}"
found=$(ls *MAN*.txt)
mv ./*MAN*.txt ./Result-MANUAL.txt
pwd
cd ..
#echo $(dirname "${i}")
#found=$(ls *MAN*.txt)
if [ -z "$found" ]
then
echo "error"
fi
done
