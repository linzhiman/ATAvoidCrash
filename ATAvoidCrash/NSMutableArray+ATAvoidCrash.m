//
//  NSMutableArray+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/13.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "NSMutableArray+ATAvoidCrash.h"
#import "ATMethodsHooker.h"
#import "ATAvoidCrashDefine.h"

@implementation NSMutableArray (ATAvoidCrash)

+ (void)at_avoidCrash
{
    Class aClass = NSClassFromString(@"__NSArrayM");
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(objectAtIndex:) seletor2:@selector(at_objectAtIndex:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(removeObjectAtIndex:) seletor2:@selector(at_removeObjectAtIndex:)];
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(insertObject:atIndex:) seletor2:@selector(at_insertObject:atIndex:)];
}

- (id)at_objectAtIndex:(NSUInteger)index
{
    if (index < self.count) {
        return [self at_objectAtIndex:index];
    }
    else {
        ATAssertFailed(@"NSMutableArray index out of range");
        return nil;
    }
}

- (void)at_removeObjectAtIndex:(NSUInteger)index
{
    if (index < self.count) {
        return [self at_removeObjectAtIndex:index];
    }
    else {
        ATAssertFailed(@"NSMutableArray index out of range");
    }
}

- (void)at_insertObject:(id)anObject atIndex:(NSUInteger)index
{
    if (index <= self.count) {
        return [self at_insertObject:anObject atIndex:index];
    }
    else {
        ATAssertFailed(@"NSMutableArray index out of range");
    }
}

@end
