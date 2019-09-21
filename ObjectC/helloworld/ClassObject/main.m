//
//  main.m
//  ClassObject
//
//  Created by wovert on 2019/9/21.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPoint.h"
#import "SPoint.h"

void process(RPoint *rp3, SPoint sp3);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建RPoint类型对象
        // 引用类型
        RPoint *rp1 = [[RPoint alloc] init];
//        RPoint *rp1 = [RPoint new];
        
        rp1.x = 10;
        rp1.y = 20;
        
        [rp1 print];
        
        // 值类型
        SPoint sp1;
        sp1.x = 10;
        sp1.y = 20;
        
        //
        
    }
    return 0;
}
