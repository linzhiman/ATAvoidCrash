//
//  NSMutableString+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/13.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "NSMutableString+ATAvoidCrash.h"
#import "ATMethodsHooker.h"
#import "ATAvoidCrashDefine.h"

@implementation NSMutableString (ATAvoidCrash)

+ (void)at_avoidCrash
{
    Class aClass = NSClassFromString(@"__NSCFString");
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(replaceCharactersInRange:withString:) seletor2:@selector(at_replaceCharactersInRange:withString:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(insertString:atIndex:) seletor2:@selector(at_insertString:atIndex:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(deleteCharactersInRange:) seletor2:@selector(at_deleteCharactersInRange:)];
}

- (void)at_replaceCharactersInRange:(NSRange)range withString:(NSString *)aString
{
    if ((NSInteger)(range.location + range.length - 1) < (NSInteger)self.length) {
        if (aString) {
            [self at_replaceCharactersInRange:range withString:aString];
        }
        else {
            ATAssertFailed(@"NSMutableString aString null");
        }
    }
    else {
        ATAssertFailed(@"NSMutableString range out of range");
    }
}

- (void)at_insertString:(NSString *)aString atIndex:(NSUInteger)loc
{
    if (aString) {
        if (loc <= self.length) {
            [self at_insertString:aString atIndex:loc];
        }
        else {
            ATAssertFailed(@"NSMutableString loc out of range");
        }
    }
    else {
        ATAssertFailed(@"NSMutableString aString null");
    }
}

- (void)at_deleteCharactersInRange:(NSRange)range
{
    if ((NSInteger)(range.location + range.length - 1) < (NSInteger)self.length) {
        [self at_deleteCharactersInRange:range];
    }
    else {
        ATAssertFailed(@"NSMutableString range out of range");
    }
}

@end
