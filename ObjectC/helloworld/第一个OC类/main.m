//
//  main.m
//  第一个OC类
//
//  Created by wovert on 2019/9/20.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>

// 类的声明
// @interface 开头，以@end结尾
// :NSObject 是为了具备创建对象的能力
@interface Iphone : NSObject
// 声明属性必须在@interface和@end之间的{}中，并且在所有属性的名称前面加上_(iOS 规范)
{
    // 默认，属性是不能直接访问
    
    @public // 属性公开
    float _model; // 型号 0
    int _cpu; // cpu 0
    double _size; // 尺寸 0
    int _color; // 颜色 0
}
// 行为
@end

// 类的实现
@implementation Iphone
// 行为的实现

@end

int main(int argc, const char * argv[]) {
    // 如何通过一个类来创建对象
    // OC 中一个类来创建一个对象，必须给类发送一个消息（类似于C语言调用方法）
    // 如何发送消息: [类名称/对象名称 方法名称]
    // 发送什么消息（调用什么方法）可以创建一个对象呢？new
    // 只要通过一个类调用类的new方法，也就是给发送一个叫做 new 的消息之后，系统内部做三件事：
    /*
      1. 为Iphone 类创建出来的对象分配存储空间
      2. 初始化 Iphone 类创建出来的对象中的属性
      3. 返回 Iphone 类创建出来的对象对应的地址
     */
    
    // Iphone 类型的指针接受了 Iphone 对象的地址
    // 一个指针保存了某一个对席那个的地址，那么就称这个指针称之为某个类型的对象
    // Iphone 类型的指针保存了 Iphone 对象的地址，就称之为phone 类型的指针p称之为Iphone 对象
    Iphone *p = [Iphone new];
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 2;
    
    NSLog(@"size=%f, color=%i, model=%f, cpu=%i", p->_size, p->_color, p->_model, p->_cpu);
    
    
    // OC 中类本质就是一个结构体，所以 p 这个指针其实就是指向了一个结构体

    /*
    struct Person {
        int age;
        char *name;
    };
    struct Person sp;
    struct Person *sip = &sp;
    
//    (*sip).age = 30;
//    (*sip).name = "wovert";
    
    sip->age = 30;
    sip->name = "wovert";
     
    printf("age=%i, name=%s\n", sip->age, sip->name);
    */
    
    return 0;
}
