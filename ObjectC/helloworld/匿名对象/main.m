#import <Foundation/Foundation.h>
#import "Person.h"
#import "Iphone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 非匿名对象
        Person *p = [Person new];
        
        [p setAge:30];
        p.age = 40;
        
        [p setName:@"wovert"];
        p.name = @"wovert2";
        [p say];
        
        // 匿名对象
        [Person new]->_age = 30;
        [Person new]->_name = @"xiuhong";
        [[Person new] say];
        
//        Iphone *phone = [Iphone new];
//        [phone brand];
        [[Iphone new] brand];
        
        Person *p2 = [Person new];
//        Iphone *phone2 = [Iphone new];
//        [p2 signal:phone2]
        [p2 signal:[Iphone new]];
        
        NSLog(@"当前对象的对应的类=%@", [Person class]);
        NSLog(@"当前对席那个的地址=%p", p);
        NSLog(@"当前对席那个的信息=%@", p);
    }
    return 0;
}
