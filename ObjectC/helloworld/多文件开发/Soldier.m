//
//  Soldier.m
//  多文件开发
//
//  Created by wovert on 2019/9/22.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Soldier.h"

@implementation Soldier
-(void)fire: (Gun *)g clip:(Clip *)clip {
    if (g != nil && clip != nil) {
        [g shoot:clip];
    }
    
}
@end
