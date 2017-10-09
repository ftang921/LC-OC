//
//  MoveZerosTests.m
//  LC-OC-Test
//
//  Created by Feng Tang on 10/9/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "MoveZeros.h"

@interface MoveZerosTests : XCTestCase {
@private
    NSMutableArray *nums;
    NSMutableArray *expected;
}

@end

@implementation MoveZerosTests

- (void)setUp {
    [super setUp];
    nums = [[NSMutableArray alloc] initWithObjects:@0, @1, @0, @3, @12, nil];
    expected = [[NSMutableArray alloc] initWithObjects:@1, @3, @12, @0, @0, nil];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMoveZeros {
    [MoveZeros moveZeroes:nums];
    XCTAssertEqualObjects(nums, expected, @"move zeros: %@", nums);
}

@end
