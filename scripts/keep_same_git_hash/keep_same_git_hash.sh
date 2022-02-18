#!/bin/bash

FILE_NAME=/tmp/1234.txt                         # git 仓库 hash 文件
FILE_NAME1=/tmp/asdf.txt                        # git 仓库 目录文件

lines=`awk '{print NR}'  $FILE_NAME | tail -n1`
echo "lines : $lines"

lines1=`awk '{print NR}'  $FILE_NAME1 | tail -n1`
echo "lines : $lines1"

# 循环遍历
for i in $(seq 1 $lines);
do
        val[$i]=`awk -v i="$i" 'NR==i {print $1}' $FILE_NAME`
        # awk -v i="$i" 'NR==i {print $1}' $FILE_NAME
        # echo "val= $val"
done

# 输出shell 数组
for i in $(seq 1 $lines);
do
        echo "val[$i]= ${val[$i]}"
done


# 循环遍历
for i in $(seq 1 $lines);
do
        path=`awk -v i="$i" 'NR==i {print $1}' $FILE_NAME1`
        cd $path
        # echo ${val[$i]}
        # git show ${val[$i]} --oneline
        # echo "git log --pretty=oneline | grep ${val[$i]} | wc -l"
        yes=`git log --pretty=oneline | grep ${val[$i]} | wc -l`
        # echo "yes $yes"
        if [ $yes -eq 0 ];then
                echo -n "no this commit id: ${val[$i]} in " && echo $path
        else
                # echo $path
                git co ${val[$i]}             # 直接输出
        fi
done
