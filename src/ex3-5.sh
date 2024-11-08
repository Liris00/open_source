#!/bin/sh


run_ls() {
    echo "프로그램을 시작합니다."
    ls $1   
    echo "프로그램을 종료합니다."
}


run_ls $1

