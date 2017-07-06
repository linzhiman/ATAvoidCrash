//
//  ATACTNSString.m
//  demo
//
//  Created by linzhiman on 2017/6/16.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import "ATACTNSString.h"

@implementation ATACTNSString

+ (BOOL)test1
{
    NSString *string = @"abc";
    unichar aChar = [string characterAtIndex:2];
    return aChar == 'c';
}

+ (BOOL)test2
{
    NSString *string = @"abc";
    unichar aChar = [string characterAtIndex:3];//NSRangeException
    return aChar == 0;
}

+ (BOOL)test3
{
    NSString *string = @"abc";
    NSString *sub = [string substringFromIndex:0];
    return [sub isEqualToString:@"abc"];
}

+ (BOOL)test4
{
    NSString *string = @"abc";
    NSString *sub = [string substringFromIndex:2];
    return [sub isEqualToString:@"c"];
}

+ (BOOL)test5
{
    NSString *string = @"abc";
    NSString *sub = [string substringFromIndex:3];
    return [sub isEqualToString:@""];
}

+ (BOOL)test6
{
    NSString *string = @"abc";
    NSString *sub = [string substringFromIndex:4];//NSRangeException
    return [sub isEqualToString:@""];
}

+ (BOOL)test7
{
    NSString *string = @"abc";
    NSString *sub = [string substringToIndex:0];
    return [sub isEqualToString:@""];
}

+ (BOOL)test8
{
    NSString *string = @"abc";
    NSString *sub = [string substringToIndex:2];
    return [sub isEqualToString:@"ab"];
}

+ (BOOL)test9
{
    NSString *string = @"abc";
    NSString *sub = [string substringToIndex:3];
    return [sub isEqualToString:@"abc"];
}

+ (BOOL)test10
{
    NSString *string = @"abc";
    NSString *sub = [string substringToIndex:4];//NSRangeException
    return [sub isEqualToString:@""];
}

+ (BOOL)test11
{
    NSString *string = @"abc";
    NSString *sub = [string substringWithRange:NSMakeRange(0, 3)];
    return [sub isEqualToString:@"abc"];
}

+ (BOOL)test12
{
    NSString *string = @"abc";
    NSString *sub = [string substringWithRange:NSMakeRange(0, 4)];//NSRangeException
    return [sub isEqualToString:@""];
}

+ (BOOL)test13
{
    NSString *string = @"abc";
    NSString *sub = [string substringWithRange:NSMakeRange(2, 1)];
    return [sub isEqualToString:@"c"];
}

+ (BOOL)test14
{
    NSString *string = @"abc";
    NSString *sub = [string substringWithRange:NSMakeRange(2, 2)];//NSRangeException
    return [sub isEqualToString:@""];
}

+ (BOOL)test15
{
    NSString *string = @"abc";
    NSString *sub = [string substringWithRange:NSMakeRange(3, 0)];
    return [sub isEqualToString:@""];
}

+ (BOOL)test16
{
    NSString *string = @"abc";
    NSString *sub = [string substringWithRange:NSMakeRange(3, 1)];//NSRangeException
    return [sub isEqualToString:@""];
}

@end
