#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. creat two object
        Person *p = [[Person alloc] init];
        Room *r = [[Room alloc] init];
        r.no = 888;
        
        // 2.人在，房间就在
        p.room = r;
        
        [r release]; // -1 还剩 1
        
        // 3.换房
//        Room *r2 = [[Room alloc] init];
//        r2.no = 555;
//        // 有问题
//        p.room = r2;
//        [r2 release];

        p.room = r; // 计数器没有任何操作
        
        // 3.人没有释放
        NSLog(@"~~~~~");
        [p release];
    }
    return 0;
}
