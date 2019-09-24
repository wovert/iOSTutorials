//
//  main.m
//  自定义方法在继承中的表现
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *s1 = [[Student alloc] initWithNameAndAge:@"孙膑" andAge:29];
        NSLog(@"%@", s1);
        
        Student *s2 = [[Student alloc] initInfo:20 andName:@"庞涓" andNo:00001];
        NSLog(@"%@", s2);
    }
    return 0;
}
