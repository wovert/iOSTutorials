/**
 * 编译：clang -fobjc-arc HelloWorld.m -o HelloWorld
 * 编译：gcc -fobjc-arc HelloWorld.m -o HelloWorld
 * 执行：./helloworld
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSLog(@"Hello, World!");
	}
	return 0;
}