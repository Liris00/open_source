#!/bin/sh

w=$1
h=$2

bmi=$(echo "scale=2; $w / (($h / 100) * ($h / 100))" | bc)

bmi_check=$(echo "$bmi < 18.5" | bc)
if [ "$bmi_check" -eq 1 ]; then
    echo "저체중입니다."
else
    bmi_check=$(echo "$bmi >= 18.5 && $bmi < 23" | bc)
    if [ "$bmi_check" -eq 1 ]; then
        echo "정상 체중입니다."
    else
        echo "과체중입니다."
    fi
fi

exit 0

