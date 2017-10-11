//
//  FindAnagramsTests.m
//  LC-OC-Test
//
//  Created by Huan Lu on 10/10/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "FindAnagrams.h"

@interface FindAnagramsTests : XCTestCase

@property(nonatomic, readwrite, copy) NSString *s;
@property(nonatomic, readwrite, copy) NSString *p;
@property(nonatomic, readwrite, copy) NSArray *expected;

@end

@implementation FindAnagramsTests

- (void)setUp {
    [super setUp];
    self.s = @"cbaebabacd";
    self.p = @"abc";
    self.expected = @[@0, @6];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFindAnagrams {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertEqualObjects([FindAnagrams findAnagramsFromString:self.s forString:self.p], self.expected);
}

@end
