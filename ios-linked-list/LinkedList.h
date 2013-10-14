//
//  LinkedList.h
//  ios-linked-list
//
//  Created by Jason Koceja on 10/13/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject{
    Node *head;
    int size;
}

//@property (nonatomic, strong) Node *head;

- (id)init;
- (id)initWithObject:(id)newObject;
+ (id)listWithObject:(id)newObject;

- (int)count;
- (void)push:(id)newObject;
- (id)pop:(id)object;
- (id)peek;

@end
