//
//  Room.m
//  多对象内存管理
//
//  Created by wovert on 2019/9/26.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Room.h"

@implementation Room
-(void)dealloc {
    NSLog(@"%s no = %i", __func__, _no);
    [super dealloc];
}
@end
