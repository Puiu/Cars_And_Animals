//
//  ListTableViewCell.h
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListManager.h"
#import "Constants.h"

@interface ListTableViewCell : UITableViewCell <UIScrollViewDelegate>

{
    NSArray *models;
}
@property UIScrollView *ScrollView;
@end
