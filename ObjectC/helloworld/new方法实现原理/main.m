//
//  main.m
//  new方法实现原理
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. 开辟存储空间：alloc方法
        // 2. 初始化所有的属性：init 方法
        // 3. 返回对象的地址
        Person *p1 = [Person new];
        
        // alloc开辟存储空间，并发所有的属性设置为0
        Person *p2 = [Person alloc];
        // 初始化成员变量，但是默认init的实现什么都没有做
        // 返回初始化后实例对象地址
        // alloc返回的地址和init返回的地址是同一个地址
        // 创建对象使用 alloc init, ·······统一编码格式
        Person *p3 = [p2 init];
        
        NSLog(@"p1=%p", p1);
        NSLog(@"p2=%p", p2);
        NSLog(@"p3=%p", p3);
        
        NSLog(@"p1.age=%i", p1.age);
        NSLog(@"p2.age=%i", p2.age);
        NSLog(@"p3.age=%i", p3.age);
        
        // init 开头的方法叫做构造方法
        // 用于初始化一个对象，让某个对象创建出来就拥有某些属性和值
        Person *p = [[Person alloc] init];
        p.age = 6;
        NSLog(@"p.age=%i", p.age);
        
    }
    return 0;
}
