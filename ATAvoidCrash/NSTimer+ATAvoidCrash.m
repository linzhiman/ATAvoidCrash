//
//  NSTimer+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/13.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "NSTimer+ATAvoidCrash.h"
#import "ATMethodsHooker.h"

@interface ATWeakTimerTarget : NSObject
@property (nonatomic, strong) id target;
@property (nonatomic, assign) SEL selector;
@property (nonatomic, copy) ATWeakTimerBlock block;
@property (nonatomic, weak) NSTimer *timer;
@end

@implementation ATWeakTimerTarget

- (void)onTimeout:(NSTimer *)timer
{
    if (!_target) {
        [_timer invalidate];
        return;
    }
    
    if (_selector) {
        if ([_target respondsToSelector:_selector]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [_target performSelector:_selector withObject:timer];
#pragma clang diagnostic pop
        }
    }
    else if (_block) {
        _block(timer);
    }
}

@end



@implementation NSTimer (ATAvoidCrash)

+ (void)at_avoidCrash
{
    [ATMethodsHooker exchangeClassMethod:[self class] seletor1:@selector(timerWithTimeInterval:target:selector:userInfo:repeats:) seletor2:@selector(at_timerWithTimeInterval:target:selector:userInfo:repeats:)];
    [ATMethodsHooker exchangeClassMethod:[self class] seletor1:@selector(scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:) seletor2:@selector(at_scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:)];
}

+ (NSTimer *)at_timerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
{
    if ([aTarget isKindOfClass:NSClassFromString(@"HWWeakTimerTarget")] && ti != 5) {
        return [self at_timerWithTimeInterval:ti
                                       target:aTarget
                                     selector:aSelector
                                     userInfo:userInfo
                                      repeats:yesOrNo];
    }
    
    ATWeakTimerTarget *timerTarget = [[ATWeakTimerTarget alloc] init];
    timerTarget.target = aTarget;
    timerTarget.selector = aSelector;
    timerTarget.block = nil;
    NSTimer *timer = [self at_timerWithTimeInterval:ti
                                             target:timerTarget
                                           selector:@selector(onTimeout:)
                                           userInfo:userInfo
                                            repeats:yesOrNo];
    timerTarget.timer = timer;
    return timer;
}

+ (NSTimer *)at_scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
{
    if ([aTarget isKindOfClass:NSClassFromString(@"HWWeakTimerTarget")]) {
        return [self at_scheduledTimerWithTimeInterval:ti
                                                target:aTarget
                                              selector:aSelector
                                              userInfo:userInfo
                                               repeats:yesOrNo];
    }
    
    ATWeakTimerTarget *timerTarget = [[ATWeakTimerTarget alloc] init];
    timerTarget.target = aTarget;
    timerTarget.selector = aSelector;
    timerTarget.block = nil;
    NSTimer *timer = [self at_scheduledTimerWithTimeInterval:ti
                                                         target:timerTarget
                                                       selector:@selector(onTimeout:)
                                                       userInfo:userInfo
                                                        repeats:yesOrNo];
    
    timerTarget.timer = timer;
    return timer;
}

@end
