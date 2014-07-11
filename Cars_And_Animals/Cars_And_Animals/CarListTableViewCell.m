//
//  CarListTableViewCell.m
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import "CarListTableViewCell.h"
#define kLblFamilyNameTag 1
#define kLblAnimalNameTag 2
#define kSpeedTag 3

@implementation CarListTableViewCell
@synthesize ScrollView = _ScrollView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        ListManager *manager = [[ListManager alloc] init];
        models = [manager GetCars];
    }
    return self;
}

#pragma mark - Interface elements

-(void)arrangeInterface
{
    CGFloat width = self.frame.size.width * [models count];
    CGFloat height = TABLEVIEW_CELL_HEIGHT;
    
    _ScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, height)];
    
    _ScrollView.delegate = self;
    
    _ScrollView.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    _ScrollView.alwaysBounceHorizontal = YES;
    [_ScrollView setUserInteractionEnabled:YES];
    _ScrollView.scrollEnabled = YES;
    _ScrollView.pagingEnabled = YES;
    
    _ScrollView.contentSize = CGSizeMake(width, height);
    
    
    for (int i = 0; i < [models count]; i++) {
        CarModel *model = (CarModel*)[models objectAtIndex:i];
        [self GetViewFromModel:model andIndexOnScrollView:i];
    }
    [self.contentView addSubview:_ScrollView];
    
    
}

-(void)GetViewFromModel:(CarModel*)model andIndexOnScrollView:(int)index
{
    CGFloat width = self.frame.size.width;
    CGFloat height = _ScrollView.frame.size.height;
    CGFloat x =  width * index;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, 0, width, height)];
    
    NSArray *colors = [NSArray arrayWithObjects:[UIColor orangeColor], [UIColor greenColor], [UIColor blueColor],[UIColor redColor], nil];
    view.backgroundColor = (UIColor*)[colors objectAtIndex:index];
    
    [self AddElementsToView:view fromModel:model];
    
    [_ScrollView addSubview: view];
    
}

#pragma mark - Labels
-(void)AddElementsToView:(UIView*)view fromModel:(CarModel*)model
{
    [self AddBrandLabelToView:view fromModel:model];
    
    //[self AddNumberOfLabel:view fromModel:model];
    //[self AddDescriptionLabel:view fromModel:model];
    
}

-(void)AddBrandLabelToView:(UIView*)view fromModel:(CarModel*)model
{
    UILabel *lblBrandName;
    
    lblBrandName = [[UILabel alloc] init];
    lblBrandName.text = model.Brand;
    lblBrandName.translatesAutoresizingMaskIntoConstraints = NO;
    lblBrandName.tag = kLblFamilyNameTag;
    
    [view addSubview:lblBrandName];
    
    NSArray * constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[lblBrandName]"
                                                                    options:0 metrics:nil
                                                                      views:NSDictionaryOfVariableBindings(lblBrandName)];
    
    [view addConstraints:constraints];
    
    NSLayoutConstraint *c1 = [NSLayoutConstraint constraintWithItem:lblBrandName
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:lblBrandName.superview
                                                          attribute:NSLayoutAttributeCenterX multiplier:1
                                                           constant:0];
    [view addConstraint:c1];
}



#pragma mark - Others
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
