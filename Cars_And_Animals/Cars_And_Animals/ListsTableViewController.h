//
//  ListsTableViewController.h
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListsTVCInterfaceTool.h"
#import "Constants.h"
#import "CarListTableViewCell.h"
#import "AnimalListTableViewCell.h"

@interface ListsTableViewController  : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property  UITableView *tableView;


@end
