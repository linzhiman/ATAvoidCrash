//
//  NSArray+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/13.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "NSArray+ATAvoidCrash.h"
#import "ATMethodsHooker.h"
#import "ATAvoidCrashDefine.h"

@implementation NSArray (ATAvoidCrash)

+ (void)at_avoidCrash
{
    [ATMethodsHooker exchangeClassMethod:[self class] seletor1:@selector(arrayWithObjects:count:) seletor2:@selector(at_arrayWithObjects:count:)];
    [ATMethodsHooker exchangeInstanceMethod:[self class] seletor1:@selector(subarrayWithRange:) seletor2:@selector(at_subarrayWithRange:)];
    
    Class aClass = NSClassFromString(@"__NSArray0");
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(objectAtIndex:) seletor2:@selector(at_NSArray0_objectAtIndex:)];
    
    aClass = NSClassFromString(@"__NSSingleObjectArrayI");
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(objectAtIndex:) seletor2:@selector(at_NSSingleObjectArrayI_objectAtIndex:)];
    
    aClass = NSClassFromString(@"__NSArrayI");
    [ATMethodsHooker exchangeInstanceMethod:aClass seletor1:@selector(objectAtIndex:) seletor2:@selector(at_NSArrayI_objectAtIndex:)];
}

+ (instancetype)at_arrayWithObjects:(const id [])objects count:(NSUInteger)cnt
{
    NSUInteger newCount = 0;
    id _Nonnull newObjects[cnt];
    
    for (NSUInteger i = 0; i < cnt; i++) {
        if (objects[i]) {
            newObjects[newCount] = objects[i];
            newCount++;
        }
        else {
            ATAssertFailed(@"NSArray object null");
        }
    }
    return [self at_arrayWithObjects:newObjects count:newCount];
}

- (NSArray *)at_subarrayWithRange:(NSRange)range
{
    if ((NSInteger)(range.location + range.length - 1) < (NSInteger)self.count) {
        return [self at_subarrayWithRange:range];
    }
    else {
        ATAssertFailed(@"NSArray range out of range");
        return [NSArray array];
    }
}

- (id)at_NSArray0_objectAtIndex:(NSUInteger)objectIndex
{
    if (objectIndex < self.count) {
        return [self at_NSArray0_objectAtIndex:objectIndex];
    }
    else {
        ATAssertFailed(@"NSArray objectIndex out of range");
        return nil;
    }
}

- (id)at_NSSingleObjectArrayI_objectAtIndex:(NSUInteger)objectIndex
{
    if (objectIndex < self.count) {
        return [self at_NSSingleObjectArrayI_objectAtIndex:objectIndex];
    }
    else {
        ATAssertFailed(@"NSArray objectIndex out of range");
        return nil;
    }
}

- (id)at_NSArrayI_objectAtIndex:(NSUInteger)objectIndex
{
    if (objectIndex < self.count) {
        return [self at_NSArrayI_objectAtIndex:objectIndex];
    }
    else {
        ATAssertFailed(@"NSArray objectIndex out of range");
        return nil;
    }
}

@end
