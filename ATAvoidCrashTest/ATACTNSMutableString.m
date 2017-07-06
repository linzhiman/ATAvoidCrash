//
//  ATACTNSMutableString.m
//  demo
//
//  Created by linzhiman on 2017/6/16.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATACTNSMutableString.h"

@implementation ATACTNSMutableString

+ (BOOL)test1
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(0, 0) withString:@"def"];
    return [string isEqualToString:@"defabc"];
}

+ (BOOL)test2
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(0, 3) withString:@"def"];
    return [string isEqualToString:@"def"];
}

+ (BOOL)test3
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(0, 4) withString:@"def"];//NSRangeException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test4
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(2, 0) withString:@"def"];
    return [string isEqualToString:@"abdefc"];
}

+ (BOOL)test5
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(2, 1) withString:@"def"];
    return [string isEqualToString:@"abdef"];
}

+ (BOOL)test6
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(2, 2) withString:@"def"];//NSRangeException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test7
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(3, 0) withString:@"def"];
    return [string isEqualToString:@"abcdef"];
}

+ (BOOL)test8
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(3, 1) withString:@"def"];//NSRangeException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test9
{
    NSString *replace = nil;
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(0, 0) withString:replace];//NSInvalidArgumentException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test10
{
    NSString *replace = nil;
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string replaceCharactersInRange:NSMakeRange(3, 1) withString:replace];//NSInvalidArgumentException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test11
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string insertString:@"def" atIndex:0];
    return [string isEqualToString:@"defabc"];
}

+ (BOOL)test12
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string insertString:@"def" atIndex:2];
    return [string isEqualToString:@"abdefc"];
}

+ (BOOL)test13
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string insertString:@"def" atIndex:3];
    return [string isEqualToString:@"abcdef"];
}

+ (BOOL)test14
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string insertString:@"def" atIndex:4];//NSRangeException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test15
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string deleteCharactersInRange:NSMakeRange(0, 0)];
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test16
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string deleteCharactersInRange:NSMakeRange(0, 3)];
    return [string isEqualToString:@""];
}

+ (BOOL)test17
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string deleteCharactersInRange:NSMakeRange(0, 4)];//NSRangeException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test18
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string deleteCharactersInRange:NSMakeRange(2, 1)];
    return [string isEqualToString:@"ab"];
}

+ (BOOL)test19
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string deleteCharactersInRange:NSMakeRange(2, 2)];//NSRangeException
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test20
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string deleteCharactersInRange:NSMakeRange(3, 0)];
    return [string isEqualToString:@"abc"];
}

+ (BOOL)test21
{
    NSMutableString *string = [NSMutableString stringWithString:@"abc"];
    [string deleteCharactersInRange:NSMakeRange(3, 1)];//NSRangeException
    return [string isEqualToString:@"abc"];
}

@end
