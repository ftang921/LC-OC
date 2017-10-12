//
//  SameTree.m
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "SameTree.h"

#import "TreeNode.h"

@implementation SameTree

+ (BOOL)isSameTreeForOneTree:(TreeNode *)p andAnotherTree:(TreeNode *)q {
    if (!p && !q) {
        return YES;
    }
    if (!p || !q) {
        return NO;
    }
    return p.val == q.val &&
        [SameTree isSameTreeForOneTree:p.left andAnotherTree:q.left] &&
        [SameTree isSameTreeForOneTree:p.right andAnotherTree:q.right];
}

@end
