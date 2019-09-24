#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(readonly) int age; // 只生成getter, 不生成setter
@property double height;
@property(setter=setW:) double weight; // 默认是 readwrite
@property(readwrite) NSString *name; // 支持setter/getter
@property(getter=getSch) NSString *school;
@property(getter=isMarried) BOOL maried;
@end

