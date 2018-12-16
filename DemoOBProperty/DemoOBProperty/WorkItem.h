#import <Foundation/Foundation.h>
#import "Employee.h"

@class Employee;

@interface WorkItem : NSObject

@property (copy) NSString * content;
@property int term;
@property (weak) Employee * owner;

@end
