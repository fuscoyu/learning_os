# helloworld 编译过程


## 1.预处理阶段，替换include，宏定义define，删除注释。生成.i文件
```shell
gcc -E helloworld.c -o helloworld.i
```

## 2.编译阶段，将c程序转换成汇编程序。生成.s文件
```shell
gcc -S helloworld.c -o helloworld.s
```

## 3.汇编阶段，将汇编程序转换成**可链接**的二进制程序。生成.o文件
```shell
gcc -C helloworld.c -o helloworld.o
```

## 4.链接阶段，将可链接的二进制程序与其他库链接在一起，形成可执行的程序文件。
```shell
gcc helloworld.c -o helloworld
```



# 显示二进制中数据 [helloworld.dump](./helloworld.dump)
```shell
objdump -d helloworld > helloworld.dump
```

# 思考题

## 为了实现C语言中函数调用和返回功能，CPU算下来函数调用和返回指令，"call","ret"指令，思考一下：这两个指令在逻辑上执行的操作是怎么样的？


网友答案：
1.call指令要执行的代码在哪里？也就是被调用函数的第一条指令所在的内存地址
2.被调用函数执行完成后，返回那个位置继续执行？

针对第一个问题，在gcc编译完成后，函数对应的指令序列所在的位置就已经确定了（我暂时理解为代码已经加载到内存中），应为这个是编译阶段需要考虑的事情。

至于第二个问题，在执行完call指令的同时，需要将call指令下面一条指令的地址保存到栈内存中。同事更新%rsp寄存器指向的位置，然后就可以开始执行被调用函数指令序列，执行完毕后，由ret执行从rsp中获取到栈顶地址returnaddres，然后跳转到call的下一条指令继续执行。


[汇编语言--王爽](https://blog.csdn.net/qq_39654127/article/details/88698911?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522162151628716780271545251%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=162151628716780271545251&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduend~default-1-88698911.first_rank_v2_pc_rank_v29&utm_term=%E7%8E%8B%E7%88%BD)

