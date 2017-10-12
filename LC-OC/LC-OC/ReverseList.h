//
//  ReverseList.h
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ListNode;

@interface ReverseList : NSObject

/*
 206. Reverse Linked List
 Reverse a singly linked list.
 */
+ (ListNode *)reverseList:(ListNode *)head;

@end
