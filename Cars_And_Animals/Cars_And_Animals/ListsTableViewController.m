//
//  ListsTableViewController.m
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import "ListsTableViewController.h"

@interface ListsTableViewController ()

@end

@implementation ListsTableViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [_tableView registerClass:[AnimalListTableViewCell class] forCellReuseIdentifier:CELL_IDENTIFIER_ANIMAL];
    [_tableView registerClass:[CarListTableViewCell class] forCellReuseIdentifier:CELL_IDENTIFIER_CAR];
    
    ListsTVCInterfaceTool *interfaceTool = [[ListsTVCInterfaceTool alloc] initWithController:self];
    [interfaceTool AddTableView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER_CAR];
    }
    else if (indexPath.section == 1)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER_ANIMAL];
    }
    
    
    
    if (!cell) {
        if (indexPath.section == 0) {
            
            cell = [[CarListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_IDENTIFIER_CAR];
        }
        else if (indexPath.section == 1)
        {
            cell = [[AnimalListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_IDENTIFIER_ANIMAL];
        }
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return TABLEVIEW_CELL_HEIGHT;
}


@end
