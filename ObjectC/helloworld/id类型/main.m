//
//  main.m
//  id类型
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // id 是数据类型，是动态类型
        // 1.定义变量
        // 2.作为函数的参考
        // 3.作为函数的返回值
        
        // 静态类型：编译时知道这个指针变量所属的类，这个变量总是存储特定类的对象
        // 如果访问了不是静态数据类型的属性和方法，那么编译器就会报错
        Person *p = [Person new];
        p.age = 30;
        [p eat];
        
        // 动态数据类型：编译时并不知道真实的变量的真实类型，只有在运行的时候数据类型
        // 访问了不属于动态数据类型的属性和方法便宜不会报错
        // id == NSObject *
        // id与NSObject *区别：
        // NSObject * 是一个静态数据类型
        // id 是一个动态数据类型
        NSObject *p2 = [Person new];
        p.age = 40;
        [p eat];
//        [p test]; // 不能调用私有方法
        
        // 静态数据类型定义的变量，不能调用子嘞特有的方法
        // 动态数据类型定义的变量，可以调用子类特有的方法
        // 动态数据类型定义的变量，可以调用私有方法
        // 弊端：动态数据类型可以调用任意方法，所以有可能调用不属于自己的方法，而编译时又不会报错，所以可能导致运行时报错
        // 应用场景：多态，减少代码量，避免调用子类特有的方法需要强制类型转换
        id obj = [Person new];

        [obj test];
        
        // 对象时否时某一个类或某一个类的子嘞
        if([obj isKindOfClass:[Person class]]) {
            // 对象是否当前制定的类的实例
            if ([obj isMemberOfClass:[Person class]]) {
                [obj eat];
            }
            // student是否是Person子类
            if ([Student isSubclassOfClass:[Person class]]) {
                
            }
        }
        
    }
    return 0;
}
