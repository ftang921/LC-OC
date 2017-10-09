//
//  main.m
//  LC-OC
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MoveZeros.h"
#import "TwoSum.h"
#import "ValidParentheses.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // two sum
        NSArray *nums = @[@2, @7, @11, @15];
        NSInteger target = 13;
        NSArray *twoSum = [TwoSum twoSum:nums withTarget:target];
        NSLog(@"two sum : %@", twoSum);
        
        // move zeros
        NSMutableArray *nums2 = [[NSMutableArray alloc] initWithObjects:@0, @1, @0, @3, @12, nil];
        [MoveZeros moveZeroes:nums2];
        NSLog(@"move zeros: %@", nums2);
        
        // valid parenthesis
        NSString *str = @"([]{}){}";
        BOOL result = [ValidParentheses isValid:str];
        NSLog(@"valid parenthesis: %@", result ? @"YES" : @"NO");
    }
    return 0;
}
