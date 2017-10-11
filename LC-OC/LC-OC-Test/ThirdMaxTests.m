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

@property(nonatomic, readwrite, copy) NSArray *nums;
@property(nonatomic, readwrite, assign) NSInteger expected;

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
    self.nums = @[@2, @7, @11, @15];
    self.expected = 7;
    NSInteger result = [ThirdMax thirdMaxFromArray:self.nums];
    XCTAssertEqual(self.expected, result);
}

@end
