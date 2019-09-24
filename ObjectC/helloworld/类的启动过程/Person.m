
//
//  Person.m
//  类的启动过程
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
// 代码被加载时调用
// 先调用父类的 load，在调用子类 load方法
+(void)load{
    NSLog(@"Person类被加载到内存了～");
}
// 当前类第一次使用的时候就会调用（创建类对象的时候）
// initialize 方法整个程序的运行过程中只会被调用一次，无论是使用多少次，这个类只会调用一次
// 用于对某一个类进行一次性的初始化
+(void)initialize {
    NSLog(@"Person initalize~");
}
@end
