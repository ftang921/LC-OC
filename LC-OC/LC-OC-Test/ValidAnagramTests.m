//
//  ValidAnagramTests.m
//  LC-OC-Test
//
//  Created by Feng Tang on 10/10/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "IsAnagram.h"

@interface ValidAnagramTests : XCTestCase

@property(nonatomic, readwrite, copy) NSString *s;
@property(nonatomic, readwrite, copy) NSString *p;

@end

@implementation ValidAnagramTests

- (void)setUp {
  [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testValidAnagram {
  self.s = @"asdfaaasda";
  self.p = @"aaaaaddfss";
  XCTAssertTrue([IsAnagram isAnagramForString:self.s andString:self.p]);
}

- (void)testInvalidAnagram {
  self.s = @"asdfaaasda";
  self.p = @"aaaddffsss";
  XCTAssertFalse([IsAnagram isAnagramForString:self.s andString:self.p]);
}

@end
