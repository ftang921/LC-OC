//
//  ReverseList.m
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import "ReverseList.h"

#import "ListNode.h"

@implementation ReverseList

+ (ListNode *)reverseList:(ListNode *)head {
    if (!head || !head.next) {
        return head;
    }
    ListNode *newHead = head;
    while (head.next) {
        ListNode *currNode = head.next;
        ListNode *nextNode = currNode.next;
        head.next = nextNode;
        currNode.next = newHead;
        newHead = currNode;
    }
    return newHead;
}

@end
