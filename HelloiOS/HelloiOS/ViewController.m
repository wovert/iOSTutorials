//
//  ViewController.m
//  HelloiOS
//
//  Created by wovert on 2019/9/25.
//  Copyright © 2019 wovert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark 监听红色按钮点击
-(IBAction)redClick {
    NSLog(@"redClick>>>");
}

#pragma mark 监听绿色按钮点击
-(IBAction)greenClick {
    NSLog(@"greenClick>>>");
}
#pragma mark 监听蓝色按钮点击
-(IBAction)blueClick {
    NSLog(@"blueClick>>>");
}

@end
