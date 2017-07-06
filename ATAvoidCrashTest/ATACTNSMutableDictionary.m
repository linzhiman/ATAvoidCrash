//
//  ATACTNSMutableDictionary.m
//  demo
//
//  Created by linzhiman on 2017/6/15.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATACTNSMutableDictionary.h"

@implementation ATACTNSMutableDictionary

+ (BOOL)test1
{
    NSString *string = nil;
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    [dictionary setObject:string forKey:@"abc"];//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{}];
}

+ (BOOL)test2
{
    NSString *string = nil;
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    [dictionary setObject:@"abc" forKey:string];//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{}];
}

+ (BOOL)test3
{
    NSString *string = nil;
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    [dictionary setObject:string forKey:string];//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{}];
}

+ (BOOL)test4
{
    NSString *string = nil;
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    [dictionary removeObjectForKey:string];//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{}];
}

+ (BOOL)test5
{
    NSString *string = nil;
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObject:@"123" forKey:@"abc"];
    [dictionary removeObjectForKey:string];//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{@"abc":@"123"}];
}

+ (BOOL)test6
{
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObject:@"123" forKey:@"abc"];
    [dictionary removeObjectForKey:@"def"];
    return [dictionary isEqualToDictionary:@{@"abc":@"123"}];
}

@end
