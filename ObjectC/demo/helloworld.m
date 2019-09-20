/**
 * 编译：clang -fobjc-arc HelloWorld.m -o HelloWorld
 * 编译：gcc -fobjc-arc HelloWorld.m -o HelloWorld
 * 执行：./helloworld
 */

#import <Foundation/Foundation.h>

// argc: 参数个数, argv: 参数字符串数组
int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSLog(@"Hello, World!");
	}
	return 0;
}