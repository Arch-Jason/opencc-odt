#!/usr/bin/bash

# print options when error or option -h
options () {
    if [ $1 == 1 ]
    then
        echo "Error. Please check your options."
    fi
    echo "
    This script can convert odt files between Traditional Chinese and Simplified Chinese.
        Options:
            -s2t Simplified to Traditional
            -t2s Traditional to Simplified
        Example:
            bash S_T_convert.sh -s2t Simplified-Chinese.odt test.odt
            That will convert a Simplified Chinese odt file to a Traditional Chinese odt file and save with file name \"test.odt\"
    "
    exit $1
}

friendly () {
    # help options
    if [[ $1 == "-h" || $1 == "--help" ]]
    then
        options 0
    fi
    # if options not correct
    if [[ $1 == "" || $1 != "-s2t" && $1 != "-t2s" || $2 == "" || $3 == "" ]]
    then
        options 1
    fi
}

convert () {
    unzip -d S_T_convert $2 #|| clear; echo "Some Error Happend With Your ODT File!!!"; options 1
    cd ./S_T_convert/
    # begin to convert content.xml with opencc
    if [ $1 == "-s2t" ]
    then
        opencc -c s2t -i content.xml -o content.xml
    fi

    if [ $1 == "-t2s" ]
    then
        opencc -c t2s -i content.xml -o content.xml
    fi

    pwd
    zip -r "$3" *
    mv "$3" ../
    cd ../
    rm -rf S_T_convert/
    echo "DONE!"
}

friendly $1 $2 $3

convert $1 $2 $3
