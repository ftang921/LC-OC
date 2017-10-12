//
//  RightSideView.m
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "RightSideView.h"

@implementation RightSideView

+ (NSArray *)rightSideView:(TreeNode *)root {
    if (!root) {
        return nil;
    }
    NSMutableArray *queue = [[NSMutableArray alloc] init];
    [queue addObject:root];
    NSMutableArray *result = [[NSMutableArray alloc] init];
    while ([queue count] > 0) {
        NSUInteger levelSize = [queue count];
        for (int i = 0; i < levelSize; i++) {
            // get curr node
            TreeNode *curr = [queue firstObject];
            [queue removeObjectAtIndex:0];
            
            // if last node in this level, push to result
            if (i == levelSize - 1) {
                [result addObject:@(curr.val)];
            }
            // push left and right child to queue
            if (curr.left) {
                [queue addObject:curr.left];
            }
            if (curr.right) {
                [queue addObject:curr.right];
            }
        }
    }
    return result;
}

@end
