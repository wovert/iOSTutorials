// 对外提供的类RPoint类型，@interface定义类的关键字 继承 NSOject
@interface RPoint: NSObject

// 定义属性：@property 定义属性的关键字
@property int x; // 表达对象的状态－是什么
@property int y;

// -:private， void: 返回值为空
-(void) print; // 表达对象的行为－做什么

// 结束定义类
@end

