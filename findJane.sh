#!/bin/bash

> oldFiles.txt

files=$(grep " jane " ../data/list.txt | cut -d ' ' -f 3)
var=~
for file in $files;
do
if test -e "$var$file";
  then echo $file >> oldFiles.txt; echo $file;
fi
done