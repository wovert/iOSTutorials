#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        p.age = 20;
        NSLog(@"%@", p);
        
        Person *p2 = [[Person alloc] init];
        p2.age = 30;
        NSLog(@"%@", p2);
        
        // 调用自定义构造方法调用
        Person *p3 = [[Person alloc] initWithAge:29];
        NSLog(@"%@", p3);
        
        // 调用自定义构造方法调用
        Person *p4 = [[Person alloc] initWithName:@"wovert"];
        NSLog(@"%@", p4);
        
        // 调用自定义构造方法调用
        Person *p5 = [[Person alloc] initWithNameAndAge:@"xiuhong" andAge:18];
        NSLog(@"%@", p5);
        
    }
    return 0;
}
