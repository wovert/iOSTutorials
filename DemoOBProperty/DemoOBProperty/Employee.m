

#import <Foundation/Foundation.h>
#import "Employee.h"

//静态变量
static int _max=100;

@implementation Employee{
    
    //自定义实例变量（无属性封装）
    int _tempCount;
    
    // 编译器自动生成
    //NSString* _firstName;
}

/* 
 编译器自动生成
 
 -(NSString*) firstName {
 return _firstName;
 }
 
 - (void)setFirstName:(NSString *)newValue{
 _firstName=newValue;
 }
 */



//更改实例变量名
//@synthesize firstName=givenName;
//@synthesize lastName=familyName;
// 自定义访问器
- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

-(void) print{
    NSLog(@"%@'s age is %d", self.fullName, self.age);
    _tempCount++;
}



//为静态变量提供访问器方法
+(int)max {
    return _max;
}

+ (void)setMax:(int)newValue{
    NSLog(@"set max...");
    _max=newValue;
}


@end


