//
//  NSMutableDictionary+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/13.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "NSMutableDictionary+ATAvoidCrash.h"
#import "ATMethodsHooker.h"
#import "ATAvoidCrashDefine.h"

@implementation NSMutableDictionary (ATAvoidCrash)

+ (void)at_avoidCrash
{
    Class aClass = NSClassFromString(@"__NSDictionaryM");
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(setObject:forKey:) seletor2:@selector(at_setObject:forKey:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(removeObjectForKey:) seletor2:@selector(at_removeObjectForKey:)];
}

- (void)at_setObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    if (anObject && aKey) {
        [self at_setObject:anObject forKey:aKey];
    }
    else {
        ATAssertFailed(@"NSMutableDictionary key/value null");
    }
}

- (void)at_removeObjectForKey:(id)aKey
{
    if (aKey) {
        [self at_removeObjectForKey:aKey];
    }
    else {
        ATAssertFailed(@"NSMutableDictionary key null");
    }
}

@end
