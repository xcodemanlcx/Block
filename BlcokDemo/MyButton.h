//
//  MyButton.h
//  BlcokDemo
//
//  Created by hx_leichunxiang on 15-2-27.
//  Copyright (c) 2015年 leichunxiang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonBlock)(void);

@interface MyButton : UIButton

@property (nonatomic, copy) ButtonBlock block;

@end
