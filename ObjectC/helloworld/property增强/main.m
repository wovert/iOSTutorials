#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:19];
        NSLog(@"_age=%i, age=%i", p->_age, p->age);
        [p setIdCard:1292939203];
        NSLog(@"_idCard=%i", [p idCard]);
    }
    return 0;
}
