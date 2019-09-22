#import <Foundation/Foundation.h>
#import "Gun.h"

@implementation Gun
-(void)shoot {
    if (self->_clip->_bullet >= 0 ) {
        NSLog(@"打了一枪，剩了%i个子弹", self->_clip->_bullet);
        self->_clip->_bullet--;
    } else {
        NSLog(@"没有子弹了，请换弹夹");
    }
}
-(void)shoot: (Clip *)c {
    // nil == null == 没有值
    // 有没有弹夹
    if (c != nil) {
        // 有没有子弹
        if (c->_bullet > 0) {
            c->_bullet -= 1;
            NSLog(@"打了一枪，剩了%i个子弹", c->_bullet);
        } else {
            NSLog(@"没有子弹了，请换弹夹");
        }
        
    } else {
        NSLog(@"没有子弹了，请换弹夹");
    }
}
@end
