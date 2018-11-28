// 引入头文件，#import 多次引入同一个头文件不会提示错误
#import <Foundation/Foundation.h>

// 入口点
int main(int argc, const char *argv[]) {
    
    // ARC
    @autoreleasepool {
        // 命令行输出OB的字符串（@标示OC字符串）
        NSLog(@"Hello, World!");
    }
    return 0;
}