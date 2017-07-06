//
//  NSString+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/13.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "NSString+ATAvoidCrash.h"
#import "ATMethodsHooker.h"
#import "ATAvoidCrashDefine.h"

@implementation NSString (ATAvoidCrash)

+ (void)at_avoidCrash
{
    Class aClass = NSClassFromString(@"__NSCFConstantString");
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(characterAtIndex:) seletor2:@selector(at_characterAtIndex:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(substringFromIndex:) seletor2:@selector(at_substringFromIndex:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(substringToIndex:) seletor2:@selector(at_substringToIndex:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(substringWithRange:) seletor2:@selector(at_substringWithRange:)];
}

- (unichar)at_characterAtIndex:(NSUInteger)index
{
    if (index < self.length) {
        return [self at_characterAtIndex:index];
    }
    else {
        ATAssertFailed(@"NSString index out of range");
        unichar abc;
        return abc;
    }
}

- (NSString *)at_substringFromIndex:(NSUInteger)from
{
    if (from <= self.length) {
        return [self at_substringFromIndex:from];
    }
    else {
        ATAssertFailed(@"NSString index out of range");
        return [NSString string];
    }
}

- (NSString *)at_substringToIndex:(NSUInteger)to
{
    if (to <= self.length) {
        return [self at_substringToIndex:to];
    }
    else {
        ATAssertFailed(@"NSString index out of range");
        return [NSString string];
    }
}

- (NSString *)at_substringWithRange:(NSRange)range
{
    if ((NSInteger)(range.location + range.length - 1) < (NSInteger)self.length) {
        return [self at_substringWithRange:range];
    }
    else {
        ATAssertFailed(@"NSString range out of range");
        return [NSString string];
    }
}

@end
