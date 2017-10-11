//
//  FindAnagrams.m
//  LC-OC
//
//  Created by Huan Lu on 10/10/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "FindAnagrams.h"

@implementation FindAnagrams

+ (NSArray *)findAnagramsFromString:(NSString *)s forString:(NSString *)p {
    // put the number of each characters in p into dictionary
    NSMutableDictionary *pCharToCountMap = [[NSMutableDictionary alloc] init];
    for (int i = 0; i < [p length]; i++) {
        char c = [p characterAtIndex:i];
        int oldCount = [pCharToCountMap[@(c)] intValue];
        pCharToCountMap[@(c)] = @(oldCount + 1);
    }
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    // maintain a sliding window on s and check if the window contains all characters in p
    NSMutableDictionary *sCharToCountMap = [[NSMutableDictionary alloc] init];
    int start = 0, end = -1;
    while (++end < [s length]) {
        // increment the count of s[end]
        char endChar = [s characterAtIndex:end];
        int oldCountOfEndChar = [sCharToCountMap[@(endChar)] intValue];
        sCharToCountMap[@(endChar)] = @(oldCountOfEndChar + 1);
        
        // increment start until the characters in sliding window is a subset of characters in p
        while ([sCharToCountMap[@(endChar)] intValue] > [pCharToCountMap[@(endChar)] intValue]) {
            char startChar = [s characterAtIndex:start];
            int oldCountOfStartChar = [sCharToCountMap[@(startChar)] intValue];
            sCharToCountMap[@(startChar)] = @(oldCountOfStartChar - 1);
            start++;
        }
        
        // check if the size of sliding window is equal to the length of p
        // if yes, we find a anagram, so update the result
        if (end - start + 1 == [p length]) {
            [result addObject:@(start)];
        }
    }

    return result;
}

@end
