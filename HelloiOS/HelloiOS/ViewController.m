//
//  ViewController.m
//  HelloiOS
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "ViewController.h"

#pragma mark 类扩展:可充属性和方法声明
// ()类扩展（扩展属性和方法）
// (HightClass) 分类（只能扩展方法）
// 可以方法.h文件中
// 作用：存放类的私有属性
@interface ViewController ()
@property (nonatomic, strong) IBOutlet UILabel *label;
-(void)run;
@end

@implementation ViewController
-(void)run {
    NSLog(@"run method...");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark 监听红色按钮点击
-(IBAction)redClick {
    // 获取文本标签
    self.label.textColor = [UIColor redColor];
    self.label.text = @"I'm red color";
    self.label.font = [UIFont systemFontOfSize: 20];
    NSLog(@"redClick>>>");
}

#pragma mark 监听绿色按钮点击
-(IBAction)greenClick {
    self.label.textColor = [UIColor greenColor];
    self.label.text = @"I'm green color";
    self.label.font = [UIFont systemFontOfSize:30];
    NSLog(@"greenClick>>>");
}
#pragma mark 监听蓝色按钮点击
-(IBAction)blueClick {
    self.label.textColor = [UIColor blueColor];
    self.label.text = @"I'm blue color";
    self.label.font = [UIFont systemFontOfSize: 40];
    NSLog(@"blueClick>>>");
}

@end
