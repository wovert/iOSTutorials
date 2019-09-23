//
//  Person.m
//  私有变量和私有方法
//
//  Created by wovert on 2019/9/23.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    // 实例变量（成员变量）可以在@interface和@implementaion都可以定义
    // 默认是私有成员变量，利用@private不一样：其他类中无法查看、无法访问
    // 只有本类定义的方法中可以访问
    double _score;
}
-(void) test {
    NSLog(@"score=%f", self->_score);
}
@end
