#!/bin/bash

# echo 'hello world!'

# 系统变量   $HOME $PWD $USER等
# 自定义变量：必须要以字母，数字，下划线组成，不能以数字开头
# 定义变量：变量名=变量值 等号两边不能有空格，变量名一般习惯用大写
# 删除变量：unset 变量名
# 声明静态变量：readonly 变量名，静态变量不能用unset
# 使用变量：$变量名

# 命令返回值赋值给变量
# A=`ls`
# echo $A
# A=$(ls)
# echo $A
# A=$ls
# echo $A # $ls 没有输出，echo 会打印一个换行

# 位置参数变量

# $n: $0代表命令本身 $1~9代表第1到第9个参数，10以上参数用花括号，${10}
# $*: 命令行所有参数，且把所有参数看成一个整体。
# $@: 命令行所有参数，且把每个参数区分对待。
# $#: 所有参数个数

# echo $0 $1 $2
# echo $*
# echo $@
# echo $#
# echo 参数个数=$#

# 预定义变量
# echo 当前进程号=$$
# ls
# echo 最后一个进程的进程号=$!
# echo 最后执行的命令的结果=$?


# 表达式
# echo $(((2+3)*2))

# echo $[(2+3)*2] # 推荐这种方法

# # 使用expr
# TEMP=`expr 2 + 3`
# echo `expr $TEMP \* 4`

# echo 条件判断
# if [ 'test01' = 'test' ]
# then
# 	echo '等于'
# fi

# if [ 20 -gt 10 ]
# then
# 	echo '大于'
# fi

# if [ -e /home/fuscoyu/mysrc/shell.sh ]
# then
# 	echo '存在'
# fi

# if [ 'test02' = 'test02' ] && echo 'hello' || echo 'world'
# then 
# 	echo '条件满足'
# fi


echo 流程控制
# echo if判断
# if [ $1 -ge 60 ]
# then
# 	echo 及格
# elif [ $1 -lt 60 ]
# then
# 	echo 不及格
# fi

# echo case分支

# case $1 in
# 	"1")
# 		echo 周一;;
# 	"2")
# 		echo 周二;;
# 	"3")
# 		echo 周三;;

# 	*)
# 		echo $1;;
# esac

# echo for循环

# for i in "$*"
# do
# 	echo "the arg is $i"
# done

# echo ------------------------------   
# for i in "$@"
# do 
# 	echo "the arg is $i"
# done 

# SUM=0

# for ((i=1;i<=100;i++))
# do 
# 	SUM=$[$SUM+$i]
# done

# echo $SUM

# SUM=0 
# i=0

# while [ $i -le $1 ]
# do 
# 	SUM=$[$SUM+$i]
# 	i=$[$i+1]
# done

# echo $SUM

echo read

read -p "input number:" NUM1
echo $NUM1

read -t 3 -p "input number in 3s" NUM2
echo $NUM2
