//
//  Person.h
//  私有变量和私有方法
//
//  Created by wovert on 2019/9/23.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject
{
    @public
    int _age;
    @protected
    double _height;
    @private
    NSString *_name;
    @package
    double _weight;
}
// 只有方法的实现，没有方法的声明，那么该方法就是私有方法
// OC中没有真正的私有方法，因为OC 是消息机制
//-(void)test;
@end

