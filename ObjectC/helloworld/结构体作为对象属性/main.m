//
//  main.m
//  结构体作为对象属性
//
//  Created by wovert on 2019/9/21.
//  Copyright © 2019 wovert. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct {
    int year;
    int month;
    int day;
} Date;

@interface Student : NSObject
{
    @public
    NSString *_name;
    Date _birthday;
}
-(void)say;
@end

@implementation Student
-(void) say {
    NSLog(@"name=%@, year=%i, month=%i, day=%i", _name, _birthday.year, _birthday.month, _birthday.day);
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [Student new];
        stu->_name = @"微明.com";
        // 1.结构体只能在定义的时候初始化
        // 2.系统并不清楚它是数组还是结构体
        stu->_birthday = (Date){1986, 1, 20}; // 复制结构体赋值给_birthday属性
        
        Date d = {1972, 8, 2};
        stu->_birthday = d;
        
        stu->_birthday.year = 1923;
        stu->_birthday.month = 1;
        stu->_birthday.day = 20;
        
        Date d1 = {1995, 1, 2};
        Date d2;
        d2 = d1; // 本质是将d1所有的属性拷贝了一份赋值给d2
        
        d2.year = 2000;
        printf("d1=year=%i\n", d1.year);
        printf("d2=year=%i\n", d2.year);
        
        [stu say];
    }
    return 0;
}
