//
//  main.m
//  引用计数器
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

/**
 * ARC: Automatic Reference Counting
 * 什么是自动引用计数，编译器在适当的地方自动添加release/retain等代码
 * 注意点：OC的 ARC（编译器干预） 次和 Java的垃圾回收（系统干预）机制不一样
 * MRC: Manual(手动) Reference Counting
     所有对象的内存欧式手动管理，程序员自己编写 release/retain等代码
 */

// 内存管理原则：有加就有减，一次alloc对应一次release, 一次retain对应一次release


int main(int argc, const char * argv[]) {
//    @autoreleasepool {
        // 引用计数器占用 4字节,创建对象时引用计数器+1
        Person *p = [[Person alloc] init];
        
        
        NSLog(@"retainCount=%lu", [p retainCount]); // 1
        [p retain]; // +1
        
        // 通过指针变量p，给 p 指向的对象发送一条 release 消息
        // 只要对象接收到release消息，应用计数起就会-1
        // 只要一个对象的引用计数器为0，系统就会释放对象
        
        // MRC 设置方法：Build Settings => 搜索：automatic reference counting 设置为 no
        NSLog(@"retainCount=%lu", [p retainCount]); // 2
        [p release]; // -1
        NSLog(@"retainCount=%lu", [p retainCount]); // 1
        [p release]; // -1
        NSLog(@"retainCount=%lu", [p retainCount]); // 1
//    }
//    [p1 setAge:20];
    return 0;
}
