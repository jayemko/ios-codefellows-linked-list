//
//  Node.m
//  ios-linked-list
//
//  Created by Jason Koceja on 10/13/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (Node*)newNodeWithObject:(id)object :(Node*)node{
    Node *newNode = [[Node alloc]init];
    newNode.next = node;
    newNode.object = object;
    return newNode;
}

@end
