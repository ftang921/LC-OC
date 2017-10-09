//
//  ValidParentheses.h
//  Leetcode
//
//  Created by Huan Lu on 10/8/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidParentheses : NSObject

/*
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
 */

+ (BOOL)isValid:(NSString *)str;

@end
