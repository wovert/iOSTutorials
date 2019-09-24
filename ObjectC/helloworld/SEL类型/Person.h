//
//  Person.h
//  SEL类型
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
-(void)demo;
-(void)signalWithNumber:(NSString *)number;
-(void)sendMessageWithNumber:(NSString *)number andContent:(NSString *)content;
-(void)makeObject:(id)obj andSel:(SEL)sel;
+(void)test;
@end
