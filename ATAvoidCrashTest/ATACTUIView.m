//
//  ATACTUIView.m
//  demo
//
//  Created by linzhiman on 2017/6/16.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATACTUIView.h"
#import <UIKit/UIKit.h>

@implementation ATACTUIView

+ (BOOL)test1
{
    UIView *parent = [UIView new];
    UIView *view = [UIView new];
    [parent addSubview:view];
    [view addSubview:view];//NSInvalidArgumentException
    return parent == view.superview;
}

@end
