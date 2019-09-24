//
//  Person.m
//  自定义构造方法
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)init {
    if (self = [super init]) {
        _age = 10;
    }
    return self;
}
-(NSString *)description {
    return [NSString stringWithFormat:@"name=%@, age=%i", _name, _age];
}

// 自定义构造方法实现
// 一个类可以有0个或多个自定义构造方法
// initWithAge 的 W 必须大写
// 属性名称或方法不要使用 new 前缀，有可能引发未知错误
-(instancetype)initWithAge:(int)age {
    if (self = [super init]) {
        _age = age;
    }
    return self;
}
-(instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}
-(instancetype)initWithNameAndAge:(NSString *)name andAge:(int)age {
    if(self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}
@end
