//
//  main.m
//  C和OC的字符串比较
//
//  Created by wovert on 2019/9/21.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <string.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"微明.com";
        char name[] = "微明.com";
        char *pname = "微明.com";
        size_t size = sizeof(name);
        size_t psize = sizeof(pname);
        printf("size=%lu\n", size); // 11
        printf("psize=%lu\n", psize); // 8
        NSString *str2 = [NSString stringWithFormat: @"age=%i, height=%f\n", 30, 1.72];
        NSLog(@"str2=%@", str2);
        NSLog(@"str.length=%lu", str.length); // 6
    }
    return 0;
}
