//
//  Node.h
//  ios-linked-list
//
//  Created by Jason Koceja on 10/13/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) id object;

+ (Node*)newNodeWithObject:(id)object :(Node*)node;


@end
