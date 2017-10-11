//
//  FirstUniqChar.m
//  LC-OC
//
//  Created by Huan Lu on 10/10/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "FirstUniqChar.h"

@implementation FirstUniqChar

+ (int)firstUniqCharFromString:(NSString *)s {
    // record the count of each characters in s
    NSInteger countOfCharacter[256] = {0};
    for (int i = 0; i < [s length]; i++) {
        char c = [s characterAtIndex:i];
        countOfCharacter[c]++;
    }
    
    // go through s again and check if the count of current char is 1
    // if yes, return the current index
    for (int i = 0; i < [s length]; i++) {
        char c = [s characterAtIndex:i];
        if (countOfCharacter[c] == 1) {
            return i;
        }
    }
    
    // if it reaches here, there's no uniq char, so return -1
    return -1;
}

@end
