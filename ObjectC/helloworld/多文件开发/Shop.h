//
//  Shop.h
//  多文件开发
//
//  Created by wovert on 2019/9/22.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

#pragma mark - 商店
@interface Shop : NSObject
// 买枪
+(Gun *)buyGun:(int) money;
// 买弹夹
+(Clip *)buyClip:(int)money;
@end
