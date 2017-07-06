//
//  NSDictionary+ATAvoidCrash.m
//  yyfe
//
//  Created by linzhiman on 2017/6/12.
//  Copyright © 2017年 yy.com. All rights reserved.
//

#import "NSDictionary+ATAvoidCrash.h"
#import "ATMethodsHooker.h"
#import "ATAvoidCrashDefine.h"

@implementation NSDictionary (ATAvoidCrash)

+ (void)at_avoidCrash
{
    [ATMethodsHooker exchangeClassMethod:[self class] seletor1:@selector(dictionaryWithObjects:forKeys:count:) seletor2:@selector(at_dictionaryWithObjects:forKeys:count:)];
}

+ (instancetype)at_dictionaryWithObjects:(const id _Nonnull [_Nullable])objects forKeys:(const id _Nonnull [_Nullable])keys count:(NSUInteger)cnt
{
    NSUInteger newCount = 0;
    id _Nonnull newObjects[cnt];
    id _Nonnull newKeys[cnt];
    
    for (NSUInteger i = 0; i < cnt; i++) {
        if (objects[i] && keys[i]) {
            newObjects[newCount] = objects[i];
            newKeys[newCount] = keys[i];
            newCount++;
        }
        else {
            ATAssertFailed(@"NSDictionary key/value null");
        }
    }
    return [self at_dictionaryWithObjects:newObjects forKeys:newKeys count:newCount];
}

@end
