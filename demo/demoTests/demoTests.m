//
//  demoTests.m
//  demoTests
//
//  Created by linzhiman on 2017/6/15.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Foundation/NSException.h>
#import "ATACTNSArray.h"
#import "ATACTNSMutableArray.h"
#import "ATACTNSDictionary.h"
#import "ATACTNSMutableDictionary.h"
#import "ATACTNSMutableString.h"
#import "ATACTNSString.h"
#import "ATACTUIView.h"

@interface demoTests : XCTestCase

@end

@implementation demoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCTAssertThrowsSpecificNamed([ATACTNSArray test1], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test2], NSException, NSInvalidArgumentException);
    XCTAssertTrue([ATACTNSArray test3]);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test4], NSException, NSRangeException);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test5], NSException, NSRangeException);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test6], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSArray test7]);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test8], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSArray test9]);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test10], NSException, NSRangeException);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test11], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSArray test12]);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test13], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSArray test14]);
    XCTAssertTrue([ATACTNSArray test15]);
    XCTAssertThrowsSpecificNamed([ATACTNSArray test16], NSException, NSRangeException);
    
    XCTAssertThrowsSpecificNamed([ATACTNSMutableArray test1], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSMutableArray test2]);
    XCTAssertTrue([ATACTNSMutableArray test3]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableArray test4], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSMutableArray test5]);
    XCTAssertTrue([ATACTNSMutableArray test6]);
    XCTAssertTrue([ATACTNSMutableArray test7]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableArray test8], NSException, NSRangeException);
    
    XCTAssertThrowsSpecificNamed([ATACTNSDictionary test1], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSDictionary test2], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSDictionary test3], NSException, NSInvalidArgumentException);
    
    XCTAssertThrowsSpecificNamed([ATACTNSMutableDictionary test1], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableDictionary test2], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableDictionary test3], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableDictionary test4], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableDictionary test5], NSException, NSInvalidArgumentException);
    XCTAssertTrue([ATACTNSMutableArray test6]);
    
    XCTAssertTrue([ATACTNSMutableString test1]);
    XCTAssertTrue([ATACTNSMutableString test2]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test3], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSMutableString test4]);
    XCTAssertTrue([ATACTNSMutableString test5]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test6], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSMutableString test7]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test8], NSException, NSRangeException);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test9], NSException, NSInvalidArgumentException);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test10], NSException, NSInvalidArgumentException);
    XCTAssertTrue([ATACTNSMutableString test11]);
    XCTAssertTrue([ATACTNSMutableString test12]);
    XCTAssertTrue([ATACTNSMutableString test13]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test14], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSMutableString test15]);
    XCTAssertTrue([ATACTNSMutableString test16]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test17], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSMutableString test18]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test19], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSMutableString test20]);
    XCTAssertThrowsSpecificNamed([ATACTNSMutableString test21], NSException, NSRangeException);
    
    XCTAssertTrue([ATACTNSString test1]);
    XCTAssertThrowsSpecificNamed([ATACTNSString test2], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSString test3]);
    XCTAssertTrue([ATACTNSString test4]);
    XCTAssertTrue([ATACTNSString test5]);
    XCTAssertThrowsSpecificNamed([ATACTNSString test6], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSString test7]);
    XCTAssertTrue([ATACTNSString test8]);
    XCTAssertTrue([ATACTNSString test9]);
    XCTAssertThrowsSpecificNamed([ATACTNSString test10], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSString test11]);
    XCTAssertThrowsSpecificNamed([ATACTNSString test12], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSString test13]);
    XCTAssertThrowsSpecificNamed([ATACTNSString test14], NSException, NSRangeException);
    XCTAssertTrue([ATACTNSString test15]);
    XCTAssertThrowsSpecificNamed([ATACTNSString test16], NSException, NSRangeException);
    
    XCTAssertThrowsSpecificNamed([ATACTUIView test1], NSException, NSInvalidArgumentException);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
