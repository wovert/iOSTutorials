//
//  Person.m
//  多对象内存管理
//
//  Created by wovert on 2019/9/26.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Person.h"
#import "Room.h"

@implementation Person
-(void)setRoom:(Room *)room {
    [room retain]; // 对房间的引用计数器 +1
    _room = room;
}
-(Room *)room {
    return _room;
}
-(void)dealloc {
    // 不加这个内存泄漏，因为人不在了，房间就不在了
    [_room release]; // 对房间的引用计数器 -1
    NSLog(@"%s", __func__);
    [super dealloc];
}
@end
