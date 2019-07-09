#!/bin/bash

_github="https://github.com/wzblog/apt-select"
_app="apt-select"

function e()
{
	echo -e "\033[$1m$2\033[0m"
}

# Backup source
function backup()
{
	echo -e "\033[32m* 开始备份源\033[0m"
	cp /etc/apt/sources.list /etc/apt/sources.list.backup

	if [ -e /etc/apt/sources.list.backup ]
	then
		e 32 "* 备份源成功"
	else
		e 31 "* 备份源失败"
		exit 1
	fi
}


function update()
{
	e 32 "* 开始清除旧软件源"
	apt-get clean
	apt-get autoclean
	e 32 "* 结束清除旧软件源"
	e 32 "* 开始更新软件源"
	apt-get update
	e 32 "* 结束更新软件源"
}


function setSource()
{
	e 32 "* 开始修改源"
	echo "----------"
	echo "+ System: ${1}"
	echo "+ Version: ${2}"
	echo "+ Server: ${3}"
	echo "----------"
	e 32 "* 开始复制指定源文件"

	if ! command -v git  > /dev/null
	then
	    e 32 " + Git install"
	    apt-get -y install git
	    apt-get -f install
	    apt-get -y install git
	fi

	_path=$(pwd)/${1}/${2}/${3}/sources.list

	if [ -e $_path ]
	then
		cp $(pwd)/${1}/${2}/${3}/sources.list /etc/apt/sources.list
		e 32 "* 复制完成"

		# update software sources
		update
	else
		e 31 "* ${_path} 文件未找到"
		exit 1
	fi
}


if [[ $1 = ali || $1 = "thu" || $1 = "163" ]]
then
	# start backup
	backup
fi


case $1 in
	ali )
		setSource ubuntu 18.04 aliyun
	;;
	thu )
		setSource ubuntu 18.04 tsinghua
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

e 33 "* $_github"
