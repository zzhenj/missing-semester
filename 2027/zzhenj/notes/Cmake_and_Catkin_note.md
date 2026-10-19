# Cmake和Catkin学习笔记

## 一.Cmake

### 1.背景

    **代码要通过编译器进行编程，C语言常用gcc，C++常用g++**

    **编译成可执行文件：`g++ -o a.exe a.cpp`**

### 2.编译器处理
    第一步操作为**预处理**：将代码中定义的宏进行文本展开同时将头文件展开到对应位置，删除注释，对一些条件编译指令处理

    查看预处理结果：`g++ -E a.cpp -o a.i`

    第二步为**编译**：将代码转换为汇编语言

    查看汇编结果：`g++ -S a.i -o a.s`

    第三步为**汇编**：将汇编代码转换为计算机可以识别的二进制语言

    查看汇编结果：`g++ -c a/s -o a.o`

    第四步为**链接**：链接标准库提供的函数

    链接结果：`g++ a.o -o a`

### 3.Cmake简介

#### 1.Make

    **Make是一个C/C++项目构建工具**

    **根据makefile文件来编译**

    **makefile内含与gcc/g++有关的指令，根据make指令的传参，决定执行哪些内部指令**

#### 2.Cmake
    **Cmake是一个C/C++项目构建工具，适合用来管理大型项目**

    **根据CMakeList.txt文件来构建makefile文件，进而根据makefile文件来编译C和C++文件并生成可执行文件**

    **CMakeList.txt文件内含与工程配置相关的内容**

    *优点*：
        *make可以根据makefile批量执行gcc和g++指令*

        *cmake可以根据CMakeList.txt自动生成makefile文件*

        *CMakeList.txt可以用开发环境生成然后自行修改细节*

    **CMakeList.txt一些内容:**

        1.`add_library( libanswer STATIC  otherFile.cpp)`：添加libanswer库目标，STATIC为静态库
        
        2.`add_subdirevtory(Folder)`:添加Folder子目录

        3.`add_executable( ${PROJECT_NAME} <sources>)`:把源文件变成可执行的程序

        4.targe_link_libraries(${PROJECT_NAME} libanswer)：为project_name可执行目标链接libanswer
            
## 二.Catkin

### 1.简介

    Catkin是基于CMake的编译构建系统，用于将源代码编译、链接并打包成可执行的 ROS 程序或功能包，适用于ROS

    一次CMake调用即可按依赖顺序构建整个工作空间内的所有包

### 2.工作空间结构
    
    **`src/`:存放所有ROS功能包的源代码**

    **`build/`:CMake和catkin构建过程中产生的中间文件的存放处**

    **`devel/`:存放可执行文件，库和环境设置脚步

    *命令`catkin_make`可以在工作空间下完成编译*




 

            

