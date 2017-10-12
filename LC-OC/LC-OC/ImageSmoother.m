//
//  ImageSmoother.m
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "ImageSmoother.h"

@implementation ImageSmoother

+ (NSArray *)imageSmoother:(NSArray *)M {
    NSUInteger m = [M count];
    NSUInteger n = m ? [(NSArray *)M[0] count] : 0;
    NSArray *directions = @[@[@-1, @-1], @[@-1, @0], @[@-1, @1],
                            @[ @0, @-1], @[ @0, @0], @[ @0, @1],
                            @[ @1, @-1], @[ @1, @0], @[ @1, @1],];
    NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:m];
    for (int i = 0; i < m; i++) {
        NSMutableArray *newRow = [[NSMutableArray alloc] initWithCapacity:n];
        [result addObject:newRow];
        for (int j = 0; j < n; j++) {
            int sum = 0, num = 0;
            for (NSArray *dir in directions) {
                int x = i + [(NSNumber *)dir[0] intValue];
                int y = j + [(NSNumber *)dir[1] intValue];
                if (x >= 0 && x < m && y >= 0 && y < n) {
                    NSArray *row = M[x];
                    sum += [(NSNumber *)row[y] intValue];
                    num++;
                }
            }
            [newRow addObject:@(sum / num)];
        }
    }
    return result;
}

@end
