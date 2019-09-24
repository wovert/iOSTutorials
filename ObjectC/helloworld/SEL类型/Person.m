//
//  Person.m
//  SEL类型
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)demo{
    NSLog(@"demo");
}
-(void)signalWithNumber:(NSString *)number {
    NSLog(@"number is %i", number);
}
-(void)sendMessageWithNumber:(NSString *)number andContent:(NSString *)content {
    NSLog(@"number=%@, content=%@", number, content );
}
- (void)makeObject:(id)obj andSel:(SEL)sel {
    [obj performSelector:sel];
}
+(void)test {
    NSLog(@"类方法");
}
@end
