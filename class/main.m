#import <Foundation/Foundation.h>
#import "rpoint.h"
#import "spoint.h" // 引用结构体


// void process(RPoint* rp3, SPoint sp3);

int main(int argc, const char* argv[]) {
    @autoreleasepool {

        // 创建对象rp1, RPoint类型，＊指针
        // 动态请求内存分配：alloc, init 默认初始化
        RPoint* rp1 = [[RPoint alloc] init]; // 对象 [发一个消息]

        rp1.x = 10;
        rp1.y = 20;

        // [rp1 print];    // 调用对象方法，或叫发送消息

        // // 编译器定义内存
        // SPoint sp1;
        // sp1.x = 10;
        // sp2.y = 20;

        // NSLog(@"拷贝－－－－－－－－");
        // RPoint* rp2 = rp1; // 指针地址
        // rp2.x++;
        // rp2.y++;

        // [rp1 print];
        // [rp2 print];

        // SPoint sp2 = sp1;
        // sp2.x++;
        // sp2.y++;
        // NSLog(@"[%d, %d]", xp1.x, xp1.y); // 10, 20
        // NSLog(@"[%d, %d]", xp2.x, xp2.y); // 

        // NSLog(@"传参数－－－－－－－－－－－");
        // process(rp2, sp1);
        // [rp1 print];
        // NSLog(@"[%d, %d]", sp1.x, sp1.y);

    }
}

// void process(RPoint* rp3, SPoint sp3) {
//     rp3.x++;
//     rp3.y++;

//     sp3.x++;
//     sp3.y++;

//     [rp3 print];
//     NSLog(@"[%d, %d]", sp3.x, sp3.y);
// }