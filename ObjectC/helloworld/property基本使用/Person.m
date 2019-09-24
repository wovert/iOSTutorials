#import "Person.h"

@implementation Person
//-(void)setAge:(int)age {
//    self->_age = age;
//}
//-(void)setHeight:(double)height {
//    self->_height = height;
//}
//-(void)setWeight:(double)weight {
//    self->_weight = weight;
//}
//-(void)setName:(NSString *)name {
//    self->_name = name;
//}
//-(int)age {
//    return self->_age;
//}
//-(double)height {
//    return self->_height;
//}
//-(double)weight {
//    return self->_weight;
//}
//-(NSString *)name {
//    return self->_name;
//}

// @synthesize 是编译器指令，简化getter/setter方法的实现
// 什么事实现？声明后面写上打括号就代表着实现
// @synthesize 后面告诉编译器，需要实现哪个@property生成的声明
// 1.先找对应的 property age
// 2.复制 property 自动生成 setter/getter方法到当前文件
// 3. age 赋值给 _age，并返回 _age
@synthesize age = _age;
@end
