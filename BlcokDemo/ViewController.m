//
//  ViewController.m
//  BlcokDemo
//
//  Created by hx_leichunxiang on 15-1-8.
//  Copyright (c) 2015年 leichunxiang. All rights reserved.
//  block 声明、实现、调用，简单列子

#import "ViewController.h"
#import "BaseViewController.h"
#import "MyButton.h"

@interface ViewController ()
{
    int number ;
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //block 声明、实现、调用，简单列子
    float (^block)(int,float) = ^(int a,float b){
        float c = a + b ;
        return c;
    };
    float d = block(1,1.5);
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 100, 100, 40);
    [btn setTitle:@"页面切换" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(nectVC) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn];
}

- (void)nectVC
{
    BaseViewController *basevc = [[BaseViewController alloc] init];
    [self presentViewController:basevc animated:YES completion:nil];
}

- (void)dealloc
{
    NSLog(@"ViewController dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
