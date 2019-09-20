//
//  main.m
//  第一个OC类
//
//  Created by wovert on 2019/9/20.
//  Copyright © 2019 wovert. All rights reserved.
//

/**
 * 类方法和对象的方法的区别
 * 1. 对象方法必须用对象调用
 * 2. 类方法必须用类来调用
 * 3. 对象方法中可以直接访问属性（成员变量）
 * 4. 类方法中不可以直接访问属性
 * 5. 类方法的优点，调用类方法的效率会比调用对象方法高
 * 6. 类方法和对象方法可以进行相互调用
 * 6.1 对象方法中可以调用类方法
 * 6.2 可以在类方中可以创建对象并调用类方法
 * 6.3 类方法中可以调用其他类方法
 */

#import <Foundation/Foundation.h>

typedef enum {
    kIColorBlack, // 黑色
    kIColorWhite, // 白色
    kIColorTuhaojin // 土豪金
} IColor;

@interface Iphone : NSObject
{
    @public // 属性公开
    float _model; // 型号 0
    int _cpu; // cpu 0
    double _size; // 尺寸 0
//    int _color; // 颜色 0
    IColor _color;
}

- (void)about;
- (char * )loadMessage;
- (int)signal:(int)number;
- (int)sendMessageWithNumber: (int)number andContent:(char *)content;
// 定义类方法，计算器
+ (int)sumWithValue1:(int)value1 andValue2:(int)value2;
+ (void)demo;
+ (NSString *) colorWithNumber :(IColor)number;

@end

// 类的实现
@implementation Iphone
// 行为的实现
- (void)about {
    // 对象方法内调用类方法
    NSLog(@"sum=%i", [Iphone sumWithValue1:10 andValue2:30]);
    
    // 创建对象
//    Iphone *p = [Iphone new];
//    NSLog(@"%s", [p loadMessage]);
    
    // 调用其他对象方法
    [self loadMessage];
    
    NSLog(@"打印本机信息");
    
    NSString *color = [Iphone colorWithNumber:(IColor)kIColorBlack];
    NSLog(@"大小=%f,型号=%f, cpu=%i,颜色=%@", _size, _model, _cpu, color);
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

// 实现类方法
+ (int)sumWithValue1:(int)value1 andValue2:(int)value2 {
    Iphone *p = [Iphone new];
    [p signal:1239293]; // 企业开发中，不推荐这么使用
    return value1 + value2;
}
+ (void)demo {
    NSLog(@"%i", [Iphone sumWithValue1:39 andValue2:28]);
    NSLog(@"demo");
}
+ (NSString *) colorWithNumber :(IColor)number {
    NSString *color;
    switch(number) {
        case 0:
            color = @"黑色";
            break;
        case 1:
            color = @"白色";
            break;
        case 2:
            color = @"土豪金";
            break;
        default:
            color = @"中国强";
            break;
    }
    return color;
}
@end

int main(int argc, const char * argv[]) {
    // 通过类创建对象
    Iphone *p = [Iphone new];
    
    // 修改对象的属性
    p->_size = 3.5;
    p->_color = kIColorWhite;
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
    
    int result = [Iphone sumWithValue1:10 andValue2:20];
    NSLog(@"result=%i", result);
    
    
    [Iphone demo];
    return 0;
}
