//
//  main.m
//  第一个OC类
//
//  Created by wovert on 2019/9/20.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Iphone : NSObject
{
    @public // 属性公开
    float _model; // 型号 0
    int _cpu; // cpu 0
    double _size; // 尺寸 0
    int _color; // 颜色 0
}

// 行为
// C 语言中定义个函数，分为声明和实现，声明写在.h中，实现写在.c中
// OC中定义一个方法，也分声明和实现，声明写在@interface中，实现写在@implementaion

// C 语言的函数：内部函数和外部函数
// OC 的方法：类方法（类名调用）和对象方法（对象调用）
// 类方法用+表示
// 对象发方法-表示

// C 语言函数的规律：函数名称 形参 返回值 返回值类型
// OC 跟 C 语言一样
//void about() {
//    printf("model = cpu = size = color");
//}

// OC 中没有形参，不需要写()，而是直接写一个
// 为什么 OC 中没有形参不要谢()呢？因为OC方法中的()有特殊的用途，OC方法中的()是用来扩住数据类型的

- (void)about;
//about;

// 有返回值没有参数，读取短信
- (char * )loadMessage;

// 有返回值有参数，打电话。有参数必须在每个参数的数据类型前面必须加上:
// 方法名称是 signal:，冒号也是方法名称的一部分
// int signal(int number)
- (int)signal:(int)number;


// 有返回值且有多个参数，发短信
// - (int)sendMessage: (int)number :(char *)content;
// adContent 标签名也是方法名的一部分
- (int)sendMessageWithNumber: (int)number andContent:(char *)content;

@end

// 类的实现
@implementation Iphone
// 行为的实现
- (void)about {
    NSLog(@"打印本机信息");
    NSLog(@"大小=%f, 颜色=%i, 型号=%f, cpu=%i", _size, _color, _model, _cpu);
}
- (char *)loadMessage {
    return "老婆，我家我做主！";
}

- (int)signal:(int) number {
    NSLog(@"打电话给%i", number);
    return 1;
}

- (int)sendMessageWithNumber: (int)number andContent:(char *)content {
    NSLog(@"发短信给%i, 内容是%s", number, content);
    return 1;
}

@end

int main(int argc, const char * argv[]) {
    // 通过类创建对象
    Iphone *p = [Iphone new];
    
    // 修改对象的属性
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 2;
    
    NSLog(@"size=%f, color=%i, model=%f, cpu=%i", p->_size, p->_color, p->_model, p->_cpu);
    
    // 给对象发送消息（调用对象的方法）
    [p about];
    char * message = [p loadMessage];
    
    // OC中的NGLog对C语言的字符串支持不是很好，如果返回的是中文的C语言字符串可能输出的是乱码，也有可能什么都不输出
    NSLog(@"content=%s", message);
    
    [p signal:129293939];
    NSLog(@"打电话成功！");
    
    [p sendMessageWithNumber:1303922392 andContent:"hello world"];
    
    return 0;
}
