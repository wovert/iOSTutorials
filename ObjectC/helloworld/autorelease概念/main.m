//
//  main.m
//  autorelease概念
//
//  Created by wovert on 2019/9/29.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    // 创建一个自动释放池
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        [p run];
        
        // 时刻关注对象什么时候被释放
        [p release];
//        p = nil;
        
        // 野指针，报错
//        [p run];
        
//        Person *p2 = [[Person alloc] init]; // counter +1 = 1
//        p2 = [p2 autorelease]; // 不需要关注 release，因为该对象放到自动释放池
        Person *p2 = [[[Person alloc] init] autorelease];
        
        [p2 retain]; // counter +1 = 2，此时不会自动释放，因为还有1个计数器
        
        [p2 run];
        [p2 run];
        [p2 run];
        
    } // 自动释放池销毁了，给自动释放池中的所有对象发送一条release消息
    
    // iOS5以前写法
    // 创建一个自动释放池
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // 任意操作
    Person *p4 = [[[Person alloc] init] autorelease];
    // 销毁一个自动释放池
    [pool release];
    
    return 0;
}
