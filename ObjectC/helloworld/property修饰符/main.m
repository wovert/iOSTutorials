//
//  main.m
//  property修饰符
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
//        p.age = 30;   // readonly
        p.name = @"wovert";
        p.height = 180.0;
        [p setW:60];
        p.school = @"大众中学";
        p.maried = true;
        
        if([p isMarried]) {
            NSLog(@"已婚~");
        }
        NSLog(@"name=%@, age=%i, school=%@", p.name, p.age, [p getSch]);
        
    }
    return 0;
}
