//
//  GreaterTreeTests.m
//  LC-OC-Test
//
//  Created by Feng Tang on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "GreaterTree.h"
#import "SameTree.h"
#import "TreeNode.h"

@interface GreaterTreeTests : XCTestCase

@property(nonatomic, readwrite, strong) TreeNode *testRoot;
@property(nonatomic, readwrite, strong) TreeNode *expectedRoot;

@end

@implementation GreaterTreeTests

- (void)setUp {
  [super setUp];
  self.testRoot = [TreeNode TreeNodeWithVal:2 left:nil right:nil];
  self.testRoot.left = [TreeNode TreeNodeWithVal:0 left:nil right:nil];
  self.testRoot.right = [TreeNode TreeNodeWithVal:3 left:nil right:nil];
  self.testRoot.left.left = [TreeNode TreeNodeWithVal:-4 left:nil right:nil];
  self.testRoot.left.right = [TreeNode TreeNodeWithVal:1 left:nil right:nil];
  
  self.expectedRoot = [TreeNode TreeNodeWithVal:5 left:nil right:nil];
  self.expectedRoot.left = [TreeNode TreeNodeWithVal:6 left:nil right:nil];
  self.expectedRoot.right = [TreeNode TreeNodeWithVal:3 left:nil right:nil];
  self.expectedRoot.left.left = [TreeNode TreeNodeWithVal:2 left:nil right:nil];
  self.expectedRoot.left.right = [TreeNode TreeNodeWithVal:6 left:nil right:nil];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGreaterTree {
    TreeNode *resultRoot = [GreaterTree greaterBSTFromBST:self.testRoot];
    BOOL isSameTree = [SameTree isSameTreeForOneTree:resultRoot andAnotherTree:self.expectedRoot];
    XCTAssertTrue(isSameTree);
}

@end
