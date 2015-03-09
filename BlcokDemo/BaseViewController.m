//
//  BaseViewController.m
//  BlcokDemo
//
//  Created by hx_leichunxiang on 15-2-27.
//  Copyright (c) 2015年 leichunxiang. All rights reserved.
//  功能描述：block的循环引用问题的解决。

#import "BaseViewController.h"
#import "MyButton.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    //防止循环引用，避免内存泄漏。
    __weak typeof(self) weakself = self;
    //不能防止循环引用
    __block BaseViewController *blockself = self;
    
    //block的循环引用：self 引用 btn ，btn 引用 block，block 引用 self。
    
    MyButton *btn = [[MyButton alloc] initWithFrame:CGRectMake(0, 100, 100, 60)];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    btn.block = ^{
        [blockself dismissViewControllerAnimated:YES completion:nil];
    };
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)dealloc
{
    NSLog(@"BaseViewController dealloc");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
