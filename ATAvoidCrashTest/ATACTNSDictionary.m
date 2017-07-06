//
//  ATACTNSDictionary.m
//  demo
//
//  Created by linzhiman on 2017/6/15.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATACTNSDictionary.h"

@implementation ATACTNSDictionary

+ (BOOL)test1
{
    NSString *string = nil;
    NSDictionary *dictionary = @{@"abc":@"123",@"def":string};//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{@"abc":@"123"}];
}

+ (BOOL)test2
{
    NSString *string = nil;
    NSDictionary *dictionary = @{@"abc":@"123",string:@"456"};//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{@"abc":@"123"}];
}

+ (BOOL)test3
{
    NSString *string = nil;
    NSDictionary *dictionary = @{@"abc":@"123",string:string};//NSInvalidArgumentException
    return [dictionary isEqualToDictionary:@{@"abc":@"123"}];
}

@end
