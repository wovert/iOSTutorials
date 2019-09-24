//
//  Student.m
//  id类型
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initInfo:(int)age andName:(NSString *)name andNo:(int)no {
    if(self = [super initWithNameAndAge:name andAge:age]) {
        _no = no;
    }
    return self;
}
-(NSString *)description {
    return [NSString stringWithFormat:@"name=%@, age=%i, no=%i", self.name, [self age], _no];
}
-(void)study {
    NSLog(@"学习～");
}
@end
