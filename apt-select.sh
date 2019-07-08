#!/bin/bash

_github="https://github.com/wzblog/apt-select"
_app="apt-select"

echo -e "\033[34m * ${_github} \033[0m"

# Backup source
function backup()
{
    echo -e "\033[32m * 开始备份源\033[0m"
    cp /etc/apt/sources.list /etc/apt/sources.list.backup

    if [ -e /etc/apt/sources.list.backup ]
    then
        echo -e "\033[32m * 备份源成功\033[0m"
    else
        echo -e "\033[31m * 备份源失败\033[0m"
        exit 1
    fi
}

function set()
{
    echo $1 > /etc/apt/sources.list
}

if [[ $1 = ali || $1 = "thu" || $1 = "163" ]]
then
    # start backup
    backup
fi


case $1 in
    ali )
        echo "阿里源"
    ;;
    thu )
        echo "清华源"
    ;;
    163 )
        echo "网易源"
    ;;
    * )
        echo "----------"
        echo "+-------------------------------+"
        echo "|    Manager for ${_app}     |"
        echo "+-------------------------------+"
        echo "${_app} ali (阿里源)"
        echo "${_app} thu (清华源)"
        echo "${_app} 163 (清华源)"
        echo "----------"
    ;;
esac