//
//  LLTableViewController.m
//  ios-linked-list
//
//  Created by Jason Koceja on 10/13/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import "LLTableViewController.h"
#import "LinkedList.h"

@interface LLTableViewController (){
    LinkedList *linkedList;
}

@end

@implementation LLTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self loadLinkedList];
    NSLog(@"Linked List count: %d", [linkedList count]);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [linkedList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    
    return cell;
}

#pragma mark - Linked List methods

- (void)loadLinkedList{
    linkedList = [LinkedList listWithObject:@"Red"];
    NSArray *colorArray = [NSArray arrayWithObjects:@"Blue",@"Green",@"Yellow",@"Orange",@"Purple", nil];
    for (NSString *colorString in colorArray) {
        [linkedList push:colorString];
    }
}

@end
