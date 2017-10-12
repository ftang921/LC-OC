//
//  ThreeSum.h
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThreeSum : NSObject

/*
 15. 3Sum
 Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0?
 Find all unique triplets in the array which gives the sum of zero.
 
 Note: The solution set must not contain duplicate triplets.
 
 For example, given array S = [-1, 0, 1, 2, -1, -4],
 
 A solution set is:
 [
     [-1, 0, 1],
     [-1, -1, 2]
 ]
 */
+ (NSArray *)threeSum:(NSArray *)nums;

@end
