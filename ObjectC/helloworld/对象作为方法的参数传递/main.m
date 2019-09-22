#import <Foundation/Foundation.h>

#pragma mark - 弹夹
@interface Clip : NSObject {
    @public
    int _bullet; // 子弹
}
-(void)addBullet;
@end

@implementation Clip
-(void)addBullet {
    // 上子弹
    self->_bullet = 10;
}
@end

//#pragma mark -
//#pragma mark 枪
#pragma mark - 枪
@interface Gun : NSObject
{
    @public
    Clip *_clip; // 弹夹
}
// 射击
-(void)shoot;
-(void)shoot:(Clip *)c;
@end

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

//#pragma mark -
//#pragma mark 士兵
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

@implementation Soldier
-(void)fire: (Gun *)g clip:(Clip *)clip {
    if (g != nil && clip != nil) {
        [g shoot:clip];
    }

}
@end

#pragma mark - 商店
@interface Shop : NSObject
// 买枪
+(Gun *)buyGun:(int) money;
// 买弹夹
+(Clip *)buyClip:(int)money;
@end

@implementation Shop
+(Gun *)buyGun:(int)money {
    // 创建一把枪
    Gun *gun = [Gun new];
    return gun;
}
+(Clip *)buyClip:(int)money {
    Clip *clip = [Clip new];
    [clip addBullet];
    return clip;
}
@end

//#pragma mark -
//#pragma mark 入口
#pragma mark - 入口
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建士兵
        Soldier *sp = [Soldier new];
        sp->_name = @"史泰龙";
        sp->_height = 1.88;
        sp->_weight = 100.0;
        
        // 创建一把枪
//        Gun *g = [Gun new];
        

        Gun *g = [Shop buyGun:888];
        
        Clip *clip = [Shop buyClip: 99];
        
        // 购买手枪
        
        // 创建弹夹
//        Clip *clip = [Clip new];
//        [clip addBullet];
        
        // 购买弹夹
        
        // 士兵开枪
        // 让对象作为方法的参数传递
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        [sp fire:g clip:clip];
        
    }
    return 0;
}
