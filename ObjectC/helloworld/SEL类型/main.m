//
//  main.m
//  SEL类型
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. SEL 类型的第一个作用，配合对象/类检查对象/类中有没有实现某一个方法
        SEL sel = @selector(setAge:);
        
        Person *p = [[Person alloc] init];
        
        //  判断p对象中有没有实现-号开头的setAge:方法
        BOOL flag = [p respondsToSelector:sel];
        if (flag) {
            NSLog(@"Person对象中实现了setAge方法");
        } else {
            NSLog(@"Person对象中没有实现setAge方法");
        }
        
        SEL sel2 = @selector(test);
        BOOL flag2 = [Person respondsToSelector:sel2];
        if (flag2) {
            NSLog(@"Personl类中有test方法");
        } else {
            NSLog(@"Personl类中没有test方法");
        }
        
        // SEL 类中第二个作用：配合对象/类来调用某一个SEL 方法
        SEL sel3 = @selector(demo);
        Person *p3 = [Person new];
        // 调用 p 对应中 sel 类型对应的方法
        BOOL flag3 = [p performSelector: sel3];
        SEL sel4 = @selector(signalWithNumber:);
        [p performSelector:sel4 withObject:@"123323"];
    
        SEL s4 = @selector(sendMessageWithNumber:andContent:);
        [p performSelector:s4 withObject:@"12345" withObject:@"你好"];
    
        Car *c = [[Car alloc] init];
        SEL s5 = @selector(run);
        Person *p5 = [[Person alloc] init];
        [p5 makeObject:c andSel:s5];
        
    }
    return 0;
}
