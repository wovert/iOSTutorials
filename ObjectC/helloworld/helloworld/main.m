#include <stdio.h>

// import 将右边的文件拷贝到当前import的位置，并且防止重复导入，头文件卫士，OC给出来一个新的预处理器
// import 优点：自动防止重复拷贝
// Foundation.h 主头文件（该主头文件拷贝了该工具箱中的所有工具头文件，只需要导入主头文件就可以使用该工具箱中所有的工具，避免了每次使用都要导入一个对应的头文件）
// 工具箱的地址：/Applications/Xcode.app/Contents/Developer/Platforms/iPHoneOS.platform/Developer/SDKs/iPhoneOS12.4.sdk/System/Library/Frameworks/Foundation.framework/Headers/Foundaation.h
// 规律：所有主头文件的名称都和工具箱的名称一致
//      所有的主头文件都是导入了该工具箱中的所有工具的头文件
#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// C 和 OC 的源文件组合在一起生成可执行文件
#import "zs.h"

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
    
    
    /*
     printf和NSL哦个的区别
       1. NSLog自动换行
       2. NSLog 在输出内容时附加一些系统信息
       3. NSLog 和 printf 接受的参数不一样
     */
    printf("C Hello World!\n");
    
    // @表示OC字符串
    NSLog(@"OC Hello World!\n");
    NSLog(@"OC Hello World!\n");
    NSLog(@"sum=%i", sum(20, 10));
    return 0;
}
