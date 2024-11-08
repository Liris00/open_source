#!/bin/sh


echo "리눅스가 재미있나요? (yes/no)"
read answer


answer=$(echo "$answer" | sed 's/\(no\)\+$/no/' | sed 's/\(yes\)\+$/yes/')


case $answer in
    yes|y|Y)
        echo "yes"
        ;;
    no|n|N)
        echo "no"
        ;;
    *)
        echo "yes or no로 입력해 주세요."
        ;;
esac

