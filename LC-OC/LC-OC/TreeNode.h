//
//  TreeNode.h
//  LC-OC
//
//  Created by Huan Lu on 10/11/17.
//  Copyright © 2017 Huan Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TreeNode : NSObject

@property(nonatomic, readwrite, assign) NSInteger val;
@property(nonatomic, readwrite, strong) TreeNode *left;
@property(nonatomic, readwrite, strong) TreeNode *right;

+ (id)TreeNodeWithVal:(NSInteger)val left:(TreeNode *)left right:(TreeNode *)right;

@end
