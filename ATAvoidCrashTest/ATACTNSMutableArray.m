//
//  ATACTNSMutableArray.m
//  demo
//
//  Created by linzhiman on 2017/6/15.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATACTNSMutableArray.h"

@implementation ATACTNSMutableArray

+ (BOOL)test1
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    return [array objectAtIndex:0] == nil;//NSRangeException
}

+ (BOOL)test2
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"abc", @"def", nil];
    [array removeObjectAtIndex:0];
    return [array isEqualToArray:@[@"def"]];
}

+ (BOOL)test3
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"abc", @"def", nil];
    [array removeObjectAtIndex:1];
    return [array isEqualToArray:@[@"abc"]];
}

+ (BOOL)test4
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"abc", @"def", nil];
    [array removeObjectAtIndex:2];//NSRangeException
    return [array isEqualToArray:@[@"abc", @"def"]];
}

+ (BOOL)test5
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"abc", @"def", nil];
    [array insertObject:@"ghi" atIndex:0];
    return [array isEqualToArray:@[@"ghi", @"abc", @"def"]];
}

+ (BOOL)test6
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"abc", @"def", nil];
    [array insertObject:@"ghi" atIndex:1];
    return [array isEqualToArray:@[@"abc", @"ghi", @"def"]];
}

+ (BOOL)test7
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"abc", @"def", nil];
    [array insertObject:@"ghi" atIndex:2];
    return [array isEqualToArray:@[@"abc", @"def", @"ghi"]];
}

+ (BOOL)test8
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"abc", @"def", nil];
    [array insertObject:@"ghi" atIndex:3];//NSRangeException
    return [array isEqualToArray:@[@"abc", @"def"]];
}

@end
