#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(readonly) int age; // 只生成getter, 不生成setter
@property double height;
@property(getter=setW, setter=setW:) double weight; // 默认是 readwrite
@property(readwrite) NSString *name; // 支持setter/getter
@property(getter=getSch) NSString *school;
@property(getter=isMarried) BOOL maried;


// 自动生成 set 方法内存管理的代码(必须是对象)
@property(nonatomic, retain) NSString *gender;
// assign: 不会生成set方法内存管理代码，仅仅只会生成普通的 set 方法
@property(assign) NSString *nickname;
// 默认什么都不写 assin

// 多线程
// atomic: 性能低(默认) 单线程
// nonatomic: 性能高，多线程

// reatin和assign不同使用
// getter 和 setter 可以同时使用

// 1. 相同类型的property修饰符不能同时使用
// 2. 不同类型的property修饰符可以是多个结合在一起使用，多个之间逗号隔开
// 3. iOS 开发中只要写上property，就立即写上 nonatomic

@end

