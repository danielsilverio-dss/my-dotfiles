#!/bin/sh

usage(){
	echo "Usage:"	
	echo "-p\tparameter"
}

if [ "$1" = "--help" ] || [ "$1" = "-h" ];then
	usage
	exit 0
fi

while getopts 'p:' opt
do
	case $opt in
		p) P1=$OPTARG;;
		*) usage && exit 0;;
	esac
done

echo $P1
