//
//  ThirdMaxTests.m
//  LC-OC-Test
//
//  Created by Feng Tang on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ThirdMax.h"

@interface ThirdMaxTests : XCTestCase
  NSArray *nums;
@end

@implementation ThirdMaxTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThirdMax {
  nums = @[@2, @7, @11, @15];
  NSInteger result = [ThirdMax thirdMaxFromArray:nums];
  XCTAssertEqual(11, result);
}

@end
