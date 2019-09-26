//
//  Person.m
//  野指针和空指针
//
//  Created by wovert on 2019/9/26.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc {
//    NSLog(@"Person dealloc");
    NSLog(@"%s", __func__);
    [super dealloc];
}
@end
