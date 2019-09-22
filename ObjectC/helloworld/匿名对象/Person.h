//
//  Person.h
//  匿名对象
//
//  Created by wovert on 2019/9/22.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}
-(void)setName: (NSString *) name;
-(void)setAge: (int) age;
-(NSString *)name;
-(int)age;
-(void)say;
-(void)signal: (Iphone *)phone;
@end
