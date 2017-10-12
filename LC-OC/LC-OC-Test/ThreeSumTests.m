//
//  ThreeSumTests.m
//  LC-OC-Test
//
//  Created by Feng Tang on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ThreeSum.h"

@interface ThreeSumTests : XCTestCase

@property(nonatomic, readwrite, copy) NSArray *nums;
@property(nonatomic, readwrite, copy) NSArray *expected;

@end

@implementation ThreeSumTests

- (void)setUp {
  [super setUp];
  self.nums = @[@-1, @0, @1, @2, @-1, @-4];
  self.expected = @[@[@-1, @-1, @2],
                    @[@-1, @0, @1]];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThreeSum {
  NSArray *actual = [ThreeSum threeSum:self.nums];
  XCTAssertEqualObjects(actual, self.expected, @"three sum");
}

@end
