//
//  Shop.m
//  多文件开发
//
//  Created by wovert on 2019/9/22.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "Shop.h"

@implementation Shop
+(Gun *)buyGun:(int)money {
    // 创建一把枪
    Gun *gun = [Gun new];
    return gun;
}
+(Clip *)buyClip:(int)money {
    Clip *clip = [Clip new];
    [clip addBullet];
    return clip;
}
@end

