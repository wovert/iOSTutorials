//
//  main.m
//  类工厂方法
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person person];
        p.age = 20;
        NSLog(@"p.age=%i",p.age);
        
        Person *p1 = [Person personWithAge:30];
        NSLog(@"p1.age=%i",p1.age);
        
        Student *s = [Student person];
        s.no = 0001;
        NSLog(@"s.no=%i", s.no);
        
        Student *s1 = [Student personWithAge:40];
        NSLog(@"p1.age=%i",s1.age);
    }
    return 0;
}
