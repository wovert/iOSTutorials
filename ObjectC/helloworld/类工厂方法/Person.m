//
//  Student.m
//  id类型
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
+(instancetype)person {
//    return [[Person alloc] init]; // 只有 Perrson可以调用
    return [[self alloc] init]; // 子类可以调用
}

// 自定义类工厂方法用于创建自定义构造方法
+(instancetype)personWithAge:(int)age {
//    Person *p = [[Person alloc] init];
    Person *p = [[self alloc] init];
    p.age = age;
    return p;
}
@end
