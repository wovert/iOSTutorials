
#import <Foundation/Foundation.h>
#import "Employee.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Employee* employee=[[Employee alloc] init];
        
        //----------------属性基础----------------
        //访问器方法 编译器自动生成setFirstName
        [employee setFirstName: @"Tom"];
        NSLog(@"First Name: %@", [employee firstName]);
        
        //属性表达式
        employee.lastName=@"Chen";//[employee setLastName: @"Chen"]
        NSLog(@"Last Name: %@", employee.lastName);//[employee lastName]
        employee.age=32;
        
        //employee._tempCount=100; //类外不可以访问实例变量
        
        [employee print];
        
        
        [Employee setMax:300];
        Employee.max=400;
        NSLog(@"class variable is %d.", Employee.max);
        
        
        
        
        //----------------内存管理----------------
        
        //循环引用
        WorkItem* workItem=[[WorkItem alloc] init];
        workItem.content=@"CRM";
        
        //循环引用
        employee.workItem=workItem;
        workItem.owner=employee;
        
        //拷贝属性
        NSMutableString *workContent = [NSMutableString stringWithString:@"ERP"];
        
        workItem.content=workContent;
        
        NSLog(@"Work Content: %@",workItem.content);
        
        [workContent appendString:@" Develop"]; //更改字符串
        
        NSLog(@"Work Content: %@",workItem.content);
        
        
    }
    return 0;
}
