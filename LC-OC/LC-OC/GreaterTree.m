//
//  GreaterTree.m
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "GreaterTree.h"

#import "TreeNode.h"

@implementation GreaterTree

+ (TreeNode *)greaterBSTFromBST:(TreeNode *)root {
    // reverse in order traversal
    NSMutableArray *stack = [[NSMutableArray alloc] init];
    NSInteger sum = 0;
    TreeNode *curr = root;
    while ([stack count] > 0 || curr) {
        while (curr) {
            [stack addObject:curr];
            curr = curr.right;
        }
        // set curr as the top elem on the stack
        curr = [stack lastObject];
        [stack removeLastObject];
        sum += curr.val;
        curr.val = sum;
        // set curr as the left child
        curr = curr.left;
    }
    return root;
}

@end
