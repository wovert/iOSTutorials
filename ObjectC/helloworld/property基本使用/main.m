#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:19];
        NSLog(@"age=%i", [p age]);
    }
    return 0;
}
