#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. creat two object
        Person *p = [[Person alloc] init];
        Room *r = [[Room alloc] init];
        r.no = 888;
        
        // 人在，房间就在
        p.room = r;
        
        [r release]; // -1 还剩 1
        
        // 人没有释放
        NSLog(@"~~~~~");
        [p release];
    }
    return 0;
}
