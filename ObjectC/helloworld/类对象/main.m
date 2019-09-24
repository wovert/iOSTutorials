//
//  main.m
//  类对象
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"

void demo(Class c);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 获取类对象
        
        // 1. [实例对象 lass] [类名 class]
        Person *p1 = [[Person alloc] init];
        Person *p2 = [[Person alloc] init];
        // 一个类只有一份类对象
        Class c1 = [p1 class];
        Class c2 = [p2 class];
        Class c3 = [Person class];
        NSLog(@"c1=%p, c2=%p, c3=%p", c1, c2, c3);
        
        // 创建实例对象
        Person *p3 = [[c3 alloc] init];
        p3.age = 30;
        NSLog(@"%i", p3.age);
        
        // 调用类方法
        [c1 test];
        
        demo(c1);
        demo([Car class]);
    }
    return 0;
}

void demo(Class c) {
    id obj = [[c alloc] init];
    NSLog(@"%@", obj);
}
