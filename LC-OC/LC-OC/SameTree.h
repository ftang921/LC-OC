//
//  SameTree.h
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TreeNode;

@interface SameTree : NSObject

/*
 100. Same Tree
 Given two binary trees, write a function to check if they are equal or not.
 Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
 */
+ (BOOL)isSameTreeForOneTree:(TreeNode *)p andAnotherTree:(TreeNode *)q;

@end
