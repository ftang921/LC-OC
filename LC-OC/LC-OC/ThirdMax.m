//
//  ThirdMax.m
//  LC-OC
//
//  Created by Huan Lu on 10/10/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "ThirdMax.h"

@implementation ThirdMax

+ (NSInteger)thirdMaxFromArray:(NSArray *)nums {
    long long max1 = LLONG_MIN, max2 = LLONG_MIN, max3 = LLONG_MIN;
    for (int i = 0; i < [nums count]; i++) {
        int num = [nums[i] intValue];
        if (num > max1) {
            max3 = max2;
            max2 = max1;
            max1 = num;
        } else if (num < max1 && num > max2) {
            max3 = max2;
            max2 = num;
        } else if (num < max2 && num > max3) {
            max3 = num;
        }
    }
    return max3 == LLONG_MIN ? max1 : max3;
}

@end
