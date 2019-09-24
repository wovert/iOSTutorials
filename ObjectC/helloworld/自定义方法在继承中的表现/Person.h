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
@property NSString *name;

// 自定义构造方法，其实就是自定义 init 方法
// 1. 一定是对象方法
// 2. 定义返回 id/instancetype
// 3. 方法名称一定以 init 开头
-(instancetype)initWithAge:(int)age;
-(instancetype)initWithName:(NSString *)name;
-(instancetype)initWithNameAndAge:(NSString *)name andAge:(int)age;
@end
