//
//  ValidParentheses.m
//  Leetcode
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "ValidParentheses.h"

@implementation ValidParentheses

+ (BOOL)isValid:(NSString *)str {
    NSMutableArray *stack = [[NSMutableArray alloc] init];
    NSDictionary *closeToOpenMap = @{@")" : @"(",
                                     @"}" : @"{",
                                     @"]" : @"["};
    for (int i = 0; i < [str length]; i++) {
        char c = [str characterAtIndex:i];
        NSString *s = [NSString stringWithFormat:@"%c", c];
        if (!closeToOpenMap[s]) { // open bracket
            [stack addObject:s];
        } else if ([stack count] > 0 && [[stack lastObject] isEqualToString:closeToOpenMap[s]]) {
            [stack removeLastObject];
        } else {
            return NO;
        }
    }
    return [stack count] == 0;
}

@end
