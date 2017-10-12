//
//  ThreeSum.m
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "ThreeSum.h"

@implementation ThreeSum

+ (NSArray *)threeSum:(NSArray *)nums {
    // sort
    NSArray *sortedArray = [nums sortedArrayUsingComparator:^NSComparisonResult(NSNumber *num1, NSNumber *num2) {
        return num1 < num2;
    }];
    
    // let i be the index of the first number, use in subarray nums[i+1:]
    // find two numbers that sum up to -nums[i]
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (int first = 0; first < (int)[sortedArray count]; first++) {
        int firstNumber = [(NSNumber *)sortedArray[first] intValue];
        int second = first + 1, third = (int)[sortedArray count] - 1;
        if (first > 0 && firstNumber == [(NSNumber *)sortedArray[first - 1] intValue]) {
            continue;
        }
        while (second < third) {
            int secondNumber = [(NSNumber *)sortedArray[second] intValue];
            int thirdNumber = [(NSNumber *)sortedArray[third] intValue];
            if (second > first + 1 && secondNumber == [(NSNumber *)sortedArray[second - 1] intValue]) {
                second++;
            } else if (firstNumber + secondNumber + thirdNumber == 0) {
                NSArray *solution = @[@(first), @(second), @(third)];
                [result addObject:solution];
            } else if (firstNumber + secondNumber + thirdNumber < 0) {
                second++;
            } else {
                third--;
            }
        }
    }
    return nil;
}

@end
