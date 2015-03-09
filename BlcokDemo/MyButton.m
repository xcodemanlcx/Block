//
//  MyButton.m
//  BlcokDemo
//
//  Created by hx_leichunxiang on 15-2-27.
//  Copyright (c) 2015年 leichunxiang. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(print) forControlEvents:UIControlEventTouchDown];
    }
    return self;
}

- (void)print
{
    if (_block) {
        _block();
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
