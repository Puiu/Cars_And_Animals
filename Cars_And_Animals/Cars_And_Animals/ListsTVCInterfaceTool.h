//
//  ListsTVCInterfaceTool.h
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListsTableViewController.h"

@class ListsTableViewController;
@interface ListsTVCInterfaceTool : NSObject

@property ListsTableViewController *controller;

//making sure that it will be used only for the ListsTableViewController
-(id)initWithController:(ListsTableViewController*) controller;

//Used to add the table view to the controller
-(void)AddTableView;

@end
