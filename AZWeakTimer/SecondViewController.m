//
//  SecondViewController.m
//  CommoniOSDemo
//
//  Created by arronzhu on 2017/8/1.
//  Copyright © 2017年 arronzhu. All rights reserved.
//

#import "SecondViewController.h"
#import "NSTimer+AZ_Helper.h"
#import "YYWeakProxy.h"

@interface SecondViewController ()
@property (nonatomic, strong) CADisplayLink *link;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) int64_t num;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 25)];
    [btn setTitle:@"pop" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(popVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.center = self.view.center;
    
//    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[YYWeakProxy proxyWithTarget:self] selector:@selector(printNum:) userInfo:nil repeats:YES];
    
    _link = [CADisplayLink displayLinkWithTarget:[YYWeakProxy proxyWithTarget:self] selector:@selector(printNum:)];
    _link.preferredFramesPerSecond = 1;
    [_link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)dealloc {
    [_timer invalidate];
    [_link invalidate];
}

- (void)printNum:(NSTimer *)timer {
    NSLog(@"%lld", _num++);
}

- (void)popVC:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
