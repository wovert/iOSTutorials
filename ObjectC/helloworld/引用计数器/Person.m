//
//  Person.m
//  引用计数器
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc {
    NSLog(@"Person被销毁");
    // 调用父类必须在最后一行
    [super dealloc];
}
+(void)load {
    NSLog(@"代码加载");
}
+(void)initialize {
    NSLog(@"初始化对象");
}

@end
