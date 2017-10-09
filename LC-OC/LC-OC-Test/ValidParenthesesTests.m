//
//  ValidParenthesesTests.m
//  LC-OC-Test
//
//  Created by Feng Tang on 10/9/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ValidParentheses.h"

@interface ValidParenthesesTests : XCTestCase {
    NSString *str;
}

@end

@implementation ValidParenthesesTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testValidParentheses {
    str = @"([]{}){}";
    XCTAssertTrue([ValidParentheses isValid:str], @"valid parenthesis");
}

- (void)testInvalidParentheses {
    str = @"([]{}){}[)";
    XCTAssertFalse([ValidParentheses isValid:str], @"invalid parenthesis");
}

@end
