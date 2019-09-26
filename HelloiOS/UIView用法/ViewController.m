//
//  ViewController.m
//  UIView用法
//
//  Created by wovert on 2019/9/27.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISwitch *flag;
@end

@implementation ViewController

// 控制器的view加载完毕时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSLog(@"%@", self.label.subviews);
//    NSLog(@"%@", self.view);
//    NSLog(@"%@", self.view.subviews);
}
-(IBAction)btnClick {
    UISwitch *s = [[UISwitch alloc] init];
    UIStepper *stepper = [[UIStepper alloc] init];
    UISlider *slider = [[UISlider alloc] init];
    // 添加控件
    [self.view addSubview:s];
//    [self.view addSubview:slider];
    [self.view addSubview:stepper];
    
    // siler插入到stepper上面
    [self.view insertSubview:slider  aboveSubview:stepper];
    
    // 删除控件
//    [self.label removeFromSuperview];
    
    // flag标记的tag是88
//    [[self.view viewWithTag:88] removeFromSuperview];
    
}
@end
