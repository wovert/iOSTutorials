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
        
        
        NSLog(@"拷贝...");
        RPoint *rp2 = rp1;
        rp2.x++;
        rp2.y++;
        
        [rp1 print];
        [rp2 print];
        
        SPoint sp2 = sp1;
        sp2.x++;
        sp2.y++;
        NSLog(@"[sp1.x=%d, sp1.y=%d]", sp1.x, sp1.y);
        NSLog(@"[sp2.x=%d, sp2.y=%d]", sp2.x, sp2.y);

        NSLog(@"传参......");
        process(rp1, sp1);
        [rp1 print];
        NSLog(@"[sp1.x=%d, sp1.y=%d]", sp1.x, sp1.y);
    }
    return 0;
}

void process(RPoint *rp, SPoint sp){
    rp.x++;
    rp.y++;
    
    sp.x++;
    sp.y++;
    
    [rp print];
    NSLog(@"[rp.x=%d, rp.y=%d]", sp.x, sp.y);
}
