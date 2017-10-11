//
//  FirstUniqCharTests.m
//  LC-OC-Test
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "FirstUniqChar.h"

@interface FirstUniqCharTests : XCTestCase

@property(nonatomic, readwrite, copy) NSString *s;
@property(nonatomic, readwrite, assign) int expected;

@end

@implementation FirstUniqCharTests

- (void)setUp {
    [super setUp];
    self.s = @"leetcode";
    self.expected = 0;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFirstUniqChar {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    int result = [FirstUniqChar firstUniqCharFromString:self.s];
    XCTAssertEqual(result, self.expected);
}

@end
