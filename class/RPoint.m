#import <Foundation/Foundation.h>
#import "rpoint.h"

@implementation RPoint

-(void) print {
  NSLog(@"[%d, %d]", self.x, self.y);
}

@end