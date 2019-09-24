//
//  Person.m
//  id类型
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
// 重写init方法
// 1. 初始化父类，在初始化子类
// 2. 必须判断父类是否初始化成功，只有父类初始化成功才能继续初始化子类
// 3. 返回当前对象的方法
// instancetye == id == 万能指针 == 指向一个对象
// id 在编译时不能判断对象的真实类型
// instancetype 在编译时判断对象的真实类型
// id 可以用来定义变量，作为返回值，也可以作为形参，但是instancetype 只能用于作为返回值
// 定义构造方法返回值尽量使用 instancetype，不要使用 id
-(instancetype)init {
    // 初始化父类: 初始化成功，返回对应的地址，初始化失败，返回nil
//    self = [super init];
    // 判断父类是否初始化成功
    // self == nil == 0
    if (self = [super init]) {
        // 初始化子类
        // 设置属性的值
        _age = 6;
    }
    return self;
}

-(void)eat {
    NSLog(@"吃饭～");
}
// 私有方法
-(void)test {
    NSLog(@"私有方法test");
}
@end
