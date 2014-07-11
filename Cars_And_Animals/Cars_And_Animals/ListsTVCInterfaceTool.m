//
//  ListsTVCInterfaceTool.m
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import "ListsTVCInterfaceTool.h"

@implementation ListsTVCInterfaceTool

@synthesize controller = _controller;

-(id)initWithController:(ListsTableViewController *)controller
{
    self = [super init];
    if (self) {
        _controller = controller;
    }
    return self;
}

-(void)AddTableView
{
    CGFloat width = 0;
    CGFloat height = 0;
    width = [[UIScreen mainScreen] bounds].size.width;
    height = [[UIScreen mainScreen] bounds].size.height;
    
    CGRect rect = CGRectMake(0, 0, width, height);
    
    
    _controller.tableView = [[UITableView alloc] initWithFrame:rect];
    
    [_controller.tableView setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
    [_controller.view addSubview:_controller.tableView];
    _controller.tableView.dataSource = _controller;
    _controller.tableView.delegate = _controller;
    [_controller.tableView setUserInteractionEnabled:YES];
    //_controller.tableView.alwaysBounceVertical = NO; //the tableview no longer bounces
    
    
}

@end
