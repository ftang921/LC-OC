//
//  ListNode.h
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject

@property (nonatomic, readwrite, assign) NSInteger val;
@property (nonatomic, readwrite, strong) ListNode *next;

@end
