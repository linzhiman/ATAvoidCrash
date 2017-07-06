//
//  demoTests2.m
//  demoTests
//
//  Created by linzhiman on 2017/6/15.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Foundation/NSException.h>
#import "ATAvoidCrash.h"
#import "ATACTNSArray.h"
#import "ATACTNSMutableArray.h"
#import "ATACTNSDictionary.h"
#import "ATACTNSMutableDictionary.h"
#import "ATACTNSMutableString.h"
#import "ATACTNSString.h"
#import "ATACTUIView.h"

#define XCTest

#ifdef XCTest
    #define ATACTAssert(atClass, index) \
        XCTAssertTrue([atClass test##index]);
#else
    #define ATACTAssert(atClass, index) \
        NSAssert([atClass test##index], @"%@ test%d failed", @#atClass, index);
#endif

#define ATACTCheck(atClass, index) \
    if ([atClass respondsToSelector:@selector(test##index)]) { \
        ATACTAssert(atClass, index) \
    }

#define ATACT(atClass) \
    ATACTCheck(atClass, 1) \
    ATACTCheck(atClass, 2) \
    ATACTCheck(atClass, 3) \
    ATACTCheck(atClass, 4) \
    ATACTCheck(atClass, 5) \
    ATACTCheck(atClass, 6) \
    ATACTCheck(atClass, 7) \
    ATACTCheck(atClass, 8) \
    ATACTCheck(atClass, 9) \
    ATACTCheck(atClass, 10) \
    ATACTCheck(atClass, 11) \
    ATACTCheck(atClass, 12) \
    ATACTCheck(atClass, 13) \
    ATACTCheck(atClass, 14) \
    ATACTCheck(atClass, 15) \
    ATACTCheck(atClass, 16) \
    ATACTCheck(atClass, 17) \
    ATACTCheck(atClass, 18) \
    ATACTCheck(atClass, 19) \
    ATACTCheck(atClass, 20) \
    ATACTCheck(atClass, 21) \

@interface demoTests2 : XCTestCase

@end

@implementation demoTests2

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [ATAvoidCrash run];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [ATAvoidCrash stop];
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    ATACT(ATACTNSArray)
    ATACT(ATACTNSMutableArray)
    ATACT(ATACTNSDictionary)
    ATACT(ATACTNSMutableDictionary)
    ATACT(ATACTNSMutableString)
    ATACT(ATACTNSString)
    
    ATACT(ATACTUIView)
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
