//
//  TreeNode.m
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "TreeNode.h"

@implementation TreeNode

+ (id)TreeNodeWithVal:(NSInteger)val left:(TreeNode *)left right:(TreeNode *)right {
    return [[TreeNode alloc] initWithVal:val left:left right:right];
}

- (id)initWithVal:(NSInteger)val left:(TreeNode *)left right:(TreeNode *)right {
    if (self = [super init]) {
        _val = val;
        _left = left;
        _right = right;
    }
    return self;
}

@end
