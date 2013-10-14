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

+ (id)listWithObject:(id)newObject{
    return [[LinkedList alloc] initWithObject:newObject];
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

- (id)pop:(id)object{
    if (size == 0) return nil;
    if (size == 1) {
        id temp = head.object;
        head = head.next;
        size--;
        return temp;
    }
    while (head.next) {
        if ([head.next.object isEqual:object]) {
            return object;
        }else{
            [self pop:object];
        }
    }
    return nil;
}

- (id)peek{
    return head.object;
}

@end
