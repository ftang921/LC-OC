//
//  MoveZeros.m
//  Leetcode
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "MoveZeros.h"

@implementation MoveZeros

+(void)moveZeroes:(NSMutableArray *)nums {
    int j = 0;
    for (int i = 0; i < [nums count]; i++) {
        if ([(NSNumber *)nums[i] integerValue] != 0) {
            [nums exchangeObjectAtIndex:i withObjectAtIndex:j++];
        }
    }
}

@end
