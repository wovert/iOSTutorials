//
//  Gun.h
//  多文件开发
//
//  Created by wovert on 2019/9/22.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
#import "Clip.h"

//#pragma mark -
//#pragma mark 枪
#pragma mark - 枪
@interface Gun : NSObject
{
@public
    Clip *_clip; // 弹夹
}
// 射击
-(void)shoot;
-(void)shoot:(Clip *)c;
@end
