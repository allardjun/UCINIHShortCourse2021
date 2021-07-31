#!/bin/bash

i=1
while read -r line;
do
  folderName=$(printf "%02d" $i)"_"${line}
  echo $folderName;
  #mkdir $folderName;
  echo $folderName > $folderName/notes.txt
  i=$((i + 1));
done < sessionlist.txt
