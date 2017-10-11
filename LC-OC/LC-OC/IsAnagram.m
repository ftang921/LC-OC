//
//  IsAnagram.m
//  LC-OC
//
//  Created by Huan Lu on 10/10/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "IsAnagram.h"

@implementation IsAnagram

+ (BOOL)isAnagramForString:(NSString *)s andString:(NSString *)t {
    if ([s length] != [t length]) {
        return NO;
    }
    NSInteger counter[256] = {0};
    for (int i = 0; i < [s length]; i++) {
        char c = [s characterAtIndex:i];
        counter[c]++;
    }
    for (int i = 0; i < [t length]; i++) {
        char c = [t characterAtIndex:i];
        if (--counter[c] < 0) {
            return NO;
        }
    }
    return YES;
}

@end
