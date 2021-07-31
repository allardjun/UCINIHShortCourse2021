#!/bin/bash

i=1
while read -r line;
do
  folderName=$(printf "%02d" $i)"_"${line}
  echo $folderName;
  mkdir $folderName;
  i=$((i + 1));
done < sessionlist.txt
