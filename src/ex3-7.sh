#!/bin/sh


mkdir "$1"
cd "$1"


for i in 0 1 2 3 4; do
    touch "file$i.txt"   
done

for i in 0 1 2 3 4; do
    mkdir "file$i"
    ln -s "../file$i.txt" "file$i/file$i.txt"   
done


ls -R

