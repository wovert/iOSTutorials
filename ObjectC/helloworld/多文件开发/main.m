#import <Foundation/Foundation.h>
#import "Soldier.h"
#import "Shop.h"

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
