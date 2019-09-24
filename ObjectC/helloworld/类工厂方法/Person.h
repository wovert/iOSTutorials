//
//  Person.h
//  自定义构造方法
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject
@property int age;
// 类工厂方法用于给对象分配存储空间和初始化存储空间
// 1. 类方法
// 2. 方法名称以类的名称开头，首字母小写
// 3. 一定要返回值，返回值的id/instancetype
+(instancetype)person;
+(instancetype)personWithAge:(int)age;

@end
