//
//  ATACTNSArray.m
//  demo
//
//  Created by linzhiman on 2017/6/15.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATACTNSArray.h"

@implementation ATACTNSArray

+ (BOOL)test1
{
    NSString *string = nil;
    NSArray *array = @[@"abc", string, @"def"];//NSInvalidArgumentException
    return [array isEqualToArray:@[@"abc", @"def"]];
}

+ (BOOL)test2
{
    NSString *string = nil;
    NSArray *array = @[@"abc", @"def", string];//NSInvalidArgumentException
    return [array isEqualToArray:@[@"abc", @"def"]];
}

+ (BOOL)test3
{
    NSArray *array = [[NSArray alloc] init];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(0, 0)];
    return [sub isEqualToArray:@[]];
}

+ (BOOL)test4
{
    NSArray *array = [[NSArray alloc] init];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(0, 1)];//NSRangeException
    return [sub isEqualToArray:@[]];
}

+ (BOOL)test5
{
    NSArray *array = [[NSArray alloc] init];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(1, 0)];//NSRangeException
    return [sub isEqualToArray:@[]];
}

+ (BOOL)test6
{
    NSArray *array = [[NSArray alloc] init];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(1, 1)];//NSRangeException
    return [sub isEqualToArray:@[]];
}

+ (BOOL)test7
{
    NSArray *array = [NSArray arrayWithObject:@"abc"];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(0, 1)];
    return [sub isEqualToArray:@[@"abc"]];
}

+ (BOOL)test8
{
    NSArray *array = [NSArray arrayWithObject:@"abc"];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(0, 2)];//NSRangeException
    return [sub isEqualToArray:@[]];
}

+ (BOOL)test9
{
    NSArray *array = [NSArray arrayWithObject:@"abc"];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(1, 0)];
    return [sub isEqualToArray:@[]];
}

+ (BOOL)test10
{
    NSArray *array = [NSArray arrayWithObject:@"abc"];
    NSArray *sub = [array subarrayWithRange:NSMakeRange(1, 1)];//NSRangeException
    return [sub isEqualToArray:@[]];
}

+ (BOOL)test11
{
    NSArray *array = [[NSArray alloc] init];//__NSArray0
    return [array objectAtIndex:0] == nil;//NSRangeException
}

+ (BOOL)test12
{
    NSArray *array = [NSArray arrayWithObject:@"abc"];//__NSSingleObjectArrayI
    return [[array objectAtIndex:0] isEqualToString:@"abc"];
}

+ (BOOL)test13
{
    NSArray *array = [NSArray arrayWithObject:@"abc"];//__NSSingleObjectArrayI
    return [array objectAtIndex:1] == nil;//NSRangeException
}

+ (BOOL)test14
{
    NSArray *array = [NSArray arrayWithObjects:@"abc", @"def", nil];//__NSArrayI
    return [[array objectAtIndex:0] isEqualToString:@"abc"];
}

+ (BOOL)test15
{
    NSArray *array = [NSArray arrayWithObjects:@"abc", @"def", nil];//__NSArrayI
    return [[array objectAtIndex:1] isEqualToString:@"def"];
}

+ (BOOL)test16
{
    NSArray *array = [NSArray arrayWithObjects:@"abc", @"def", nil];//__NSArrayI
    return [array objectAtIndex:2] == nil;//NSRangeException
}

@end
