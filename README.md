# iOS

## Apple Product

- 1976 年创立
- 1976年推出 Apple I
- 1977年推出 Apple II
- 1980年推出 Apple III
  － 1983年推出 Apple Lisa
  － 1984年推出 Macintosh
  － 1991年推出 PowerBook， 2006年被MacBook所取代
  － 1993年推出 Apple Newton  掌上电脑

## Apple 电脑产品

－ 1998年推出 iMac
－ 2005年推出 Mac mini（主机）
－ 2006年推出 Mac Pro（服务器）
－ 2006年推出 MacBook
－ 2006年推出 MacBook Pro
－ 2008年推出 MacBook Air
 
－ 2001 iPod
－ 2004 iPod Mini
－ 2005 iPod nano、iPod Shuffle
－ 2007 iPod Classic、iPod Touch（iOS）

## Apple Mobile

- 2007 iPhone
- 2008 iPhone 3G
- 2009 iPhone 3GS
- 2010 iPhone 4 乔布斯离世
- 2011 iPhone 4S
- 2012 iPhone 5
  － 2013 iPhone 5S、iPhone 5C

## Apple 平板电脑

－ 2010 iPad
－ 2011 iPad 2
－ 2012 iPad mini

－ 2006 Apple TV

## OS X(v10,x:unix)操作系统

- 2001 年从 Macintosh 电脑上分离出来成为 OS X 10.0
- 2001 OS X 10.1
- 2002 OS X 10.2, 10.3
- 2005 OS X 10.4
- 2006 OS X 10.5
- 2008 OS X 10.6
- 2010 OS X 10.7 appstore
- 2012 OS X 10.8
- 2013 OS X 10.9 省电（后台进程），内存压缩
- 2014 OS X 10.10

### OS X 系统架构

- C、C++、Object－C、Swift 
  - OS X GUI
    - Unix

## iOS history

- 2007 iPhone Runs OS x
- 2008 iPhone OS
- 2010 iOS, iOS4(multiprocess)
- 2011 iOS5
- 2012 iOS6
- 2013 iOS7(扁平化)
- 2014 iOS8

### iOs 系统架构

- C、C++、Object-C、Swift 
  - iOS GUI
    - Unix

## iOS 软硬件环境要求

- 硬件环境要求
  - CPU 双核
  - 内存 8G
  - MacBook Pro
  - 测试手机iPhone 5+

- 软件环境要求
  - OS X 10.9.3 ＋
  - Xcode 6.0+

## 工作空间

- File -> New -> Workspace (Ctrl+&+n)

## 快捷键

- 代码提示：ESC
- 移动行：alt+&+[ or ]

## 解决问题的途径

- 搜索引擎
  - bing.com
  - so.com
- 技术交流论坛
- 技术问答平台
  - stackoverflow.com
- github.com

## 如何提问

- 语言简洁、问题明了
- 问题清晰
- 定位问题原因
- 特定问题需要描述场景、操作、错误结果

## Objective-C 语言简介

> 简称 ObjC 或 OC，在 C语言基础上做了面向对象扩展

－ 1980年代初由 Brad Cox 和 Tom Love 发明，后来成为 NeXT 的主力语言，后被苹果收购，成为苹果开发平台的助理语言
－ 与 CoCoa 和 Cocoa Touch 框架高度集成，支持开发 Mac OS X、IOS应用
－ 在苹果开发平台上，通过LLVM编译器架构，支持与Swift语言双向互操作

## Objective-C 演技脉络

- 1972，C, Dennis Ritche
- 1982, Smalltalk, Alan Kay
- 1983, C++, Bjarne Stroustrup
- 1983, Objective-C Brad Cox, Tom Love
- 2014, Swift, Chris Lattner

```
++++++++++++++ ++++++++++++++++++++ ++++++++++++++++  ++++++++++++++
+++ Swift ++++ ++++ Objective-C +++ ++++++ C/C++ +++  ++++++++++++++
++++++++++++++ ++++++++++++++++++++ ++++++++++++++++  ++++++++++++++
                                                      ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
+++ LLVM Compile Framework & Objective-C Runtime +++  ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
                                                      ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
++++++++++++++++++ Cocoa Touch +++++++++++++++++++++  ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
                                                      ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++          ++
++++++++++++++++++++ Media +++++++++++++++++++++++++  ++   Xcode  ++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++          ++
                                                      ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
++++++++++++++++++ Core Services +++++++++++++++++++  ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
                                                      ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
++++++++++++++++++++ Core OS +++++++++++++++++++++++  ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++  ++++++++++++++
```

## 如何掌握高级变成语言

－ 底层思维：向下，如何把握机器底层从微观理解对象构造
  － 语言构造
  － 编译转换
  － 内存模型
  － 运行时机制
－ 抽象思维：向上，如何将我们的周围世界抽象为程序代码
  － 面相对象
  － 组建封装
  － 设计模式
  － 架构模式

## ”时空人“三位一体分析法

- 对时间分析 —— 发生在什么时候？
  - compile-time VS run-time
- 空间分析 —— 变量放在哪里
  - stack VS heap
- 人物分析 —— 代码哪里来的？
  - programmer VS compiler/runtime/framework

## 两种开发方式

- 1. Clang 或 GCC 命令行
  - `clang -fobjc-arc HelloWorld.m`
  - `-fobjc-arc` 支持ARC内存管理
  － 适合调试、研究、微观探测
- 2. Xcode 项目
  - 构建正规工程项目
  - 使用大型框架，追求设计质量与代码组织

### HelloWorld

``` sh
$ vi helloworld/HelloWorld.m

编译
$ clang -fobjc-arc HelloWorld.m -o HelloWorld
$ gcc -fobjc-arc HelloWorld.m -o HelloWorld

运行
$ ./HelloWorld

帮助
$ clang --help
```

## ObjC 编译过程

前段工具 －> 优化器 －> 代码生成器

![ObjC 编译流程](./images/objc-flow.png)

## 学习资源

－ [苹果官方文档](https://developer.apple.com/develop/)
  - [Programming with Objective-C](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)
  - [iOS](https://developer.apple.com/library/ios/)

- 苹果开发者大会 WWDC 
  - [2017](https://developer.apple.com/videos/wwdc2017/)
  - [2018](https://developer.apple.com/videos/wwdc2018/)

## 类与对象

- 引用类型 reference type
  - 类 class
  - 指针 pointer
  - 块 block
- 值类型 value type
  - 基础数值类型
  - 结构 struct
  - 枚举 enum
- 类型装饰
  - 协议 protocol
  - 类别 category
  - 扩展 extension

### 类与结构（class VS struct）

- 类型与实例
  - 类与对象
  - 结构与值
- 类——引用类型
  - 位于栈上的指针（引用）
  - 位于堆上的实体对象
- 结构——值类型
  - 实例直接位于栈中
- 空间分析
  - 运行时内存图

### 对象的空间分析

![对象内存空间分析](./images/object-in-memory.png)
![结构内存空间分析](./images/struct-in-memory.png)

### stack VS heap

- stack: 存储值类型
  - 无ARC 负担，由系统自动管理，以执行函数为单位
  - 空间大小编译时确定（参数＋局部变量）
  - 函数执行时，系统立即自动回收 stack
  - 函数之行结束，系统立即自动回首 stack
  - 函数之间通过拷贝值传递
  - 具有局部性，大小有限额，超出会 stack overflow
- heap: 存储引用类型对象
  - 分配有程序员手动请求（创建对象时）
  - 释放由运行时ARC机制自动释放（确定时）
  - 函数之间通过拷贝引用（指针）传递
  - 具有全局性，总体无大小限制（受制于系统内存整体大小）

[RPoint](./class/RPoint.h)