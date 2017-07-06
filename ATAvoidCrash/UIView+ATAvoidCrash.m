//
//  UIView+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/12.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "UIView+ATAvoidCrash.h"
#import "ATMethodsHooker.h"
#import "ATAvoidCrashDefine.h"

@implementation UIView (ATAvoidCrash)

+ (void)at_avoidCrash
{
    [ATMethodsHooker exchangeInstanceMethod:[self class] seletor1:@selector(addSubview:) seletor2:@selector(at_addSubview:)];
}

- (void)at_addSubview:(UIView *)view
{
    if (self != (id)view) {
        [self at_addSubview:view];
    }
    else {
        ATAssertFailed(@"UIView addSubview with self");
    }
}

@end
