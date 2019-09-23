#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        // 成员变量修饰符
//        p->_age;
//        p->_height;
//        p->_name;
//        p->_weight;
//        [p test];
        
        // 访问私有方法
        id pp = [Person new];
        [pp test];
        
        // 访问私有方法
        [p performSelector:@selector(test)];
    }
    return 0;
}
