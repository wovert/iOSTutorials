
#import <Foundation/Foundation.h>
#import "Gun.h"

#pragma mark - 士兵
@interface Soldier: NSObject
{
@public
    NSString *_name;
    double _height;
    double _weight;
}
-(void)fire:(Gun *)g clip:(Clip *)c;
@end
