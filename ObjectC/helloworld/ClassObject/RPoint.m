#import <Foundation/Foundation.h>
#import "RPoint.h"

// 静态变量
static int _max = 100;
@implementation RPoint

-(void) print{
    NSLog(@"[rp->x=%d, rp->y=%d]", self.x, self.y);
}
+(int)max {
    return _max;
}
+(void)setMax:(int)newValue {
    NSLog(@"set max...");
    _max = newValue;
}
@end
