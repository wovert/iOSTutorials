//
//  Person.m
//  匿名对象
//
//  Created by wovert on 2019/9/22.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)say {
    NSLog(@"name=%@, age=%i", self->_name, self->_age);
}
-(void)signal:(Iphone *)phone {
    [phone callWithNumber:123456];
}
-(void)setName: (NSString *) name {
    self->_name = name;
}
-(void)setAge:(int)age {
    self->_age = age;
}
-(NSString *)name {
    return self->_name;
}
-(int)age {
    return self->_age;
}
-(NSString *)description {
    NSString *str = [NSString stringWithFormat: @"name=%@,age=%i", self.name, self.age];
    return str;
}
@end
