//
//  TwoSum.m
//  Leetcode
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "TwoSum.h"

@implementation TwoSum

+ (NSArray *)twoSum:(NSArray *)nums withTarget:(NSInteger)target {
    NSMutableDictionary *numToIndex = [[NSMutableDictionary alloc] init];
    for (int i = 0; i < [nums count]; i++) {
        NSInteger another = target - [(NSNumber *)nums[i] integerValue];
        if (numToIndex[@(another)]) {
            NSInteger firstIndex = [numToIndex[@(another)] integerValue];
            return @[@(firstIndex), @(i)];
        } else {
            numToIndex[nums[i]] = @(i);
        }
    }
    return nil;
}

@end
