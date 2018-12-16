#import <Foundation/Foundation.h>
#import "WorkItem.h"

@class WorkItem;

@interface Employee : NSObject

@property NSString* firstName;
@property NSString* lastName;



@property int age;
@property NSDate* birthday;


@property (readonly) NSString* fullName;

@property WorkItem* workItem;


-(void) print;

+(int)max;
+(void)setMax:(int)newValue;

@end

