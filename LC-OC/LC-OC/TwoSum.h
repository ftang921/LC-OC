//
//  TwoSum.h
//  Leetcode
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwoSum : NSObject

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */
+ (NSArray *)twoSum:(NSArray *)nums withTarget:(NSInteger)target;
    
@end
