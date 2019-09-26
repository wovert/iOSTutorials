//
//  main.m
//  野指针和空指针
//
//  Created by wovert on 2019/9/26.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init]; // 1
        
        // 只要一个对象被释放了，这个对象称之为“僵死对象”
        [p release]; // 1-1=0
        // 只要给野指针发送消息就报错
        // Person object 0x101060430 overreleased while already deallocating; break on objc_overrelease_during_dealloc_error to debug
        
        // 空指针 nil 0
        // 为了避免给野指针发送消息会报错，当一个对象被释放后将这个对象的指针设置为空指针
        // 因为在 OC 中给空指针发送消息是不会报错
        p = nil;
        [p release];
//        [p release];
//        [p release];
//        [p release];
//        [p release];
    }
    return 0;
}
