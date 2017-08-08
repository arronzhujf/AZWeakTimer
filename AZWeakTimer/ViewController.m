//
//  ViewController.m
//  CommoniOSDemo
//
//  Created by arronzhu on 2017/7/7.
//  Copyright © 2017年 arronzhu. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 25)];
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.center = self.view.center;
}

- (void)pushVC:(UIButton *)sender {
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
}

@end
