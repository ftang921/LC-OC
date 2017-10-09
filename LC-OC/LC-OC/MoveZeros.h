//
//  MoveZeros.h
//  Leetcode
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoveZeros : NSObject

/*
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

Note:
You must do this in-place without making a copy of the array.
Minimize the total number of operations.
 */

+(void)moveZeroes:(NSMutableArray *)nums;

@end
