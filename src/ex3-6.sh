#!/bin/sh


if [ ! -d "$1" ]; then
    mkdir "$1"
fi


cd "$1"
touch file0.txt file1.txt file2.txt file3.txt file4.txt  
tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt  

mkdir files && tar -xvf files.tar -C files/
ls files/


