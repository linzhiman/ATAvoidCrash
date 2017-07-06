//
//  ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/12.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "ATAvoidCrash.h"
#import "UIView+ATAvoidCrash.h"
#import "NSDictionary+ATAvoidCrash.h"
#import "NSMutableDictionary+ATAvoidCrash.h"
#import "NSArray+ATAvoidCrash.h"
#import "NSMutableArray+ATAvoidCrash.h"
#import "NSString+ATAvoidCrash.h"
#import "NSMutableString+ATAvoidCrash.h"
#import "NSTimer+ATAvoidCrash.h"

@implementation ATAvoidCrash

+ (void)run
{
    [self runOrStop:YES];
}

+ (void)stop
{
    [self runOrStop:NO];
}

+ (void)runOrStop:(BOOL)run
{
    static BOOL running = NO;
    if (run == running) {
        return;
    }
    running = run;
    
    [UIView at_avoidCrash];
    
    [NSDictionary at_avoidCrash];
    [NSMutableDictionary at_avoidCrash];
    [NSArray at_avoidCrash];
    [NSMutableArray at_avoidCrash];
    [NSString at_avoidCrash];
    [NSMutableString at_avoidCrash];
    [NSTimer at_avoidCrash];
}

@end
