//
//  LinkedList.m
//  ios-linked-list
//
//  Created by Jason Koceja on 10/13/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"

@implementation LinkedList

- (id)init{
    self = [super init];
    if (self) {
        head = nil;
        size = 0;
    }
    return self;
}

- (id)initWithObject:(id)object{
    self = [super init];
    if (self) {
        head = [Node newNodeWithObject:object :nil];
        size = 1;
    }
    return self;
}

+ (LinkedList*)newListWithHeadNode:(id)object{
    return [[LinkedList alloc] initWithObject:object];
}

- (int)count{
    return size;
}

- (void)push:(id)newObject{
    if (size == 0) {
        head = [Node newNodeWithObject:newObject :nil];
    }else{
        Node *nextNode = [Node newNodeWithObject:newObject :head];
        head = nextNode;
    }
    size++;
}

- (id)pop{
    if (size) {
        id temp = head.object;
        head = head.next;
        size--;
        return temp;
    }
    return nil;
}

- (id)peek{
    return head.object;
}

- (BOOL)contains:(id)object{
    while (head.next) {
        if ([head.next.object isEqual:object]) {
            return YES;
        }else{
            [self contains:object];
        }
    }
    return NO;
}



@end
