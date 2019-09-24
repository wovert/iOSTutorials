//
//  Student.h
//  id类型
//
//  Created by wovert on 2019/9/24.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface Student : Person
@property int no; // 学号
-(instancetype)initInfo:(int)age andName:(NSString *)name andNo:(int)no;
-(void)study;
@end


