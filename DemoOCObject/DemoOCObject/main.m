#import <Foundation/Foundation.h>
#import "RPoint.h" // RPoint类型
#import "SPoint.h" // 引用结构体文件

// 函数声明预置
void process(RPoint* rp3, SPoint sp3);

int main(int argc, const char* argv[]) {
    @autoreleasepool {
        
        /*
        * 创建对象rp1, RPoint类型，＊指针
        * 1.动态内存分配：RPoint alloc，[]: 表示方法的调用
        * 2.初始化对象，默认调用RPoint构造器，初始化成员属性x=0,y=0
        */
        RPoint* rp1 = [[RPoint alloc] init]; // []:表示给对象发一个消息
        
        rp1.x = 10; // 修改属性值
        rp1.y = 20;
        
        [rp1 print];    // 调用对象print方法，或叫给一个对象发送消息
        
        // 编译器静态分配内存
        SPoint sp1;     // 定义SPoint结构体变量
        sp1.x = 10;
        sp1.y = 20;
        
        NSLog(@"拷贝－－－－－－－－");
        RPoint* rp2 = rp1; // 指针地址
        rp2.x++;
        rp2.y++;
        
        [rp1 print];
        [rp2 print];
        
        SPoint sp2 = sp1;
        sp2.x++;
        sp2.y++;
        NSLog(@"[%d, %d]", sp1.x, sp1.y); // 10, 20
        NSLog(@"[%d, %d]", sp2.x, sp2.y); // 11, 21
        
        NSLog(@"传参数－－－－－－－－－－－");
        process(rp2, sp1);
        [rp1 print];
        NSLog(@"[%d, %d]", sp1.x, sp1.y);
    }
}

void process(RPoint* rp3, SPoint sp3) {
    rp3.x++;
    rp3.y++;
    
    sp3.x++;
    sp3.y++;
    
    [rp3 print];
    NSLog(@"[%d, %d]", sp3.x, sp3.y);
}

