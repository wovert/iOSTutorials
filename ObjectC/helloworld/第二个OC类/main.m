//
//  main.m
//  第二个OC类
//
//  Created by wovert on 2019/9/21.
//  Copyright © 2019 wovert. All rights reserved.
//

/**
 * 方法可以没有声明只有实现
 * 方法可以只有声明没有实现，编译不会报错，但是运行会报错
   reason: '-[Person cook]: unrecognized selector sent to instance 0x100505090'
     翻译：发送了一个不能识别的消息，在 Person 类中没有+开头的demo类方法
   reason: '-[Person static]: unrecognized selector sent to class 0x100505090'
     翻译：发送了一个不能识别的消息，在 Person 类中没有+开头的demo成员方法
 
 * 类注意点
 * - 类可以只有实现没有声明 @implementation Person : NSObject
 * - 在开发中不建议这样写
 *
 */

#import <Foundation/Foundation.h>

@interface Person: NSObject
// 属性
{
    @public
    int _age;
    double _height;
    double _weight;
}
// 行为
-(void)eat :(NSString *)foodName;
-(void)sleep;
-(void)walk;
-(void)cook;
+(void)demo;

@end

@implementation Person

-(void)eat :(NSString *)foodName {
    NSLog(@"正在吃[%@]", foodName);
}
-(void)sleep {
    NSLog(@"正在睡觉~");
}
-(void)walk {
    NSLog(@"正在散步~");
}
+(void)demo {
    NSLog(@"demo类方法～");
}
-(void)run {
    NSLog(@"running......");
}
@end

int main(int argc, const char * argv[]) {
    // 创建对象的指针p指向第0个属性的地址，但不是类的第0个属性_age，而是一个叫做isa的属性
    // isa是一个指针，占8个字节，指向这个类
    // 类也是一个对象，Person也是一个对象
    // 创建对席那个其实就是通过一个类对象来创建一个新的对象
    // 类对象系统自动创建，保存了当前对象的所有方法
    // 实例对象是程序手动通过 new 来创建的，而实例对象中有一个 isa 指针就指向了创建它的那个类对象
    Person *p = [Person new];
    p->_age = 18;
    
    p->_height = 190.00;
    p->_weight = 60.00;
    
    [p eat: (NSString *)@"饺子"];
    [p sleep];
    [p walk];
    
    NSLog(@"p=%p", p);
    NSLog(@"&age=%p", &(p->_age));
    
    [Person demo];
    
    [p run];
    [p cook];
    return 0;
}
