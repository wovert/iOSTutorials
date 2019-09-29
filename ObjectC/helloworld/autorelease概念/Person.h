//
//  Person.h
//  多对象内存管理
//
//  Created by wovert on 2019/9/26.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

@interface Person : NSObject
{
    Room *_room;
}
-(void)run;
-(void)setRoom:(Room *)room;
-(Room *)room;
@end

