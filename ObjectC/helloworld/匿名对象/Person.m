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
@end
