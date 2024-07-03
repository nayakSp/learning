#!/bin/bash
#
echo "Hello World"
echo "My script name : $0 "
echo "My current path : $(pwd)"
cd /home/jenkins/myScripts
echo "My changed path : $(pwd)"

FileName=${0##*/}
FileNameWithoutExtension=${FileName%.*}
echo "FileName=\${0##*/}"
echo "FileNameWithoutExtension=\${FileName%.*}"
echo "FileName  : ${FileName}"
echo "FileNameWithoutExtension  : ${FileNameWithoutExtension}"
echo "Strip directory info and only gives filename : $(basename $0) "
echo "Strip filename and only gives directory path : $(dirname $0) "
echo "Gives full path for a file : $(realpath $0)"
echo "My script file : $0 "
echo "My script file : $(basename $(readlink -nf $0))"
echo -e "\n\n\n\n"
#/home/jenkins/myScripts/$0
echo "Poll SCM feature learning "
