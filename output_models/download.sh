#!/bin/bash

function main() {
    public_server="http://lmflow.org:5000"
    if [ $# -lt 1 -o "$1" = "-h" -o "$1" = "--help" ]; then
        echo "Usage: bash $(basename $0) model_name"
        echo "Example: bash $(basename $0) vicuna-13b"
        echo "Example: bash $(basename $0) all"
    fi

    if [ "$1" = "robin-7b" -o "$1" = "all" ]; then
        echo "downloading robin-7b"
        filename='robin-7b.tar.gz'
        wget ${public_server}/${filename}
        tar zxvf ${filename}
        rm ${filename}
    fi

    if [ "$1" = "robin-13b" -o "$1" = "all" ]; then
        echo "downloading robin-13b"
        filename='robin-13b.tar.gz'
        wget ${public_server}/${filename}
        tar zxvf ${filename}
        rm ${filename}
    fi


    if [ "$1" = "minigpt4_7b" -o "$1" = "all" ]; then
        echo "downloading minigpt4_7b"
        filename='pretrained_minigpt4_7b.pth'
        wget ${public_server}/${filename}
    fi

    if [ "$1" = "minigpt4_13b" -o "$1" = "all" ]; then
        echo "downloading minigpt4_13b"
        filename='pretrained_minigpt4_13b.pth'
        wget ${public_server}/${filename}
    fi
}

main "$@"