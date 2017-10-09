//
//  TwoSumTest.m
//  LC-OC
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "TwoSum.h"

@interface TwoSumTest : XCTestCase {
@private
    NSArray *nums;
    NSInteger target;
    NSArray *expected;
}

@end

@implementation TwoSumTest

- (void)setUp {
    [super setUp];
    nums = @[@2, @7, @11, @15];
    target = 13;
    expected = @[@0, @2];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTwoSum {
    NSArray *actual = [TwoSum twoSum:nums withTarget:target];
    XCTAssertEqualObjects(actual, expected, @"two sum");
}

@end

