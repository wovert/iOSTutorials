//
//  Person.h
//  property基本使用
//
//  Created by wovert on 2019/9/23.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    int _age;
    int age;
    double _height;
    double _weight;
    NSString *_name;
}
//-(void)setAge:(int)age;
//-(void)setHeight:(double)height;
//-(void)setWeight:(double)weight;
//-(void)setName:(NSString *)name;
//
//-(int)age;
//-(double)height;
//-(double)weight;
//-(NSString *)name;

// @property 是编译器指令
// Xcode 4.4之前，可以使用@property 来代替getter/setter方法的声明
// 使用@property就不用写getter/setter方法的声明
@property int age;

// 不写成员变量，则系统自动生成一个_开头的成员变量，并且是.m文件生成的私有成员变量，即不能直接访问
@property int idCard;
@end
