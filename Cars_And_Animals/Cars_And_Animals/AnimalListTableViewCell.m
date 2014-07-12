//
//  AnimalListTableViewCell.m
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import "AnimalListTableViewCell.h"
#define kLblFamilyNameTag 1
#define kLblAnimalNameTag 2
#define kSpeedTag 3

@implementation AnimalListTableViewCell
@synthesize ScrollView = _ScrollView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        ListManager *manager = [[ListManager alloc] init];
        models = [manager GetAnimals];
        [self arrangeInterface];
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
        AnimalModel *model = (AnimalModel*)[models objectAtIndex:i];
        [self GetViewFromModel:model andIndexOnScrollView:i];
    }
    [self.contentView addSubview:_ScrollView];
    
    
}

-(void)GetViewFromModel:(AnimalModel*)model andIndexOnScrollView:(int)index
{
    CGFloat width = self.frame.size.width;
    CGFloat height = _ScrollView.frame.size.height;
    CGFloat x =  width * index;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, 0, width, height)];
    
    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor yellowColor], [UIColor purpleColor], nil];
    view.backgroundColor = (UIColor*)[colors objectAtIndex:index];
    
    [self AddElementsToView:view fromModel:model];
    
    [_ScrollView addSubview: view];
    
}

#pragma mark - Labels
-(void)AddElementsToView:(UIView*)view fromModel:(AnimalModel*)model
{
    [self AddFamilyNameLabelToView:view fromModel:model];
    
    [self AddNameLabelToView:view fromModel:model];
    [self AddSpeedLabelToView:view fromModel:model];
    
}

-(void)AddFamilyNameLabelToView:(UIView*)view fromModel:(AnimalModel*)model
{
    UILabel *lblFamilyName;
    
    lblFamilyName = [[UILabel alloc] init];
    lblFamilyName.text = model.FamilyName;
    lblFamilyName.translatesAutoresizingMaskIntoConstraints = NO;
    lblFamilyName.tag = kLblFamilyNameTag;
    
    [view addSubview:lblFamilyName];
    
    NSArray * constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[lblFamilyName]"
                                                                    options:0 metrics:nil
                                                                      views:NSDictionaryOfVariableBindings(lblFamilyName)];
    
    [view addConstraints:constraints];
    
    NSLayoutConstraint *c1 = [NSLayoutConstraint constraintWithItem:lblFamilyName
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:lblFamilyName.superview
                                                          attribute:NSLayoutAttributeCenterX multiplier:1
                                                           constant:0];
    [view addConstraint:c1];
}

-(void)AddNameLabelToView:(UIView*)view fromModel:(AnimalModel*)model
{
    UILabel *lblName;
    
    lblName = [[UILabel alloc] init];
    lblName.text = model.AnimalName;
    lblName.translatesAutoresizingMaskIntoConstraints = NO;
    lblName.tag = kLblAnimalNameTag;
    
    [view addSubview:lblName];
    
    NSArray * constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-60-[lblName]"
                                                                    options:0 metrics:nil
                                                                      views:NSDictionaryOfVariableBindings(lblName)];
    
    [view addConstraints:constraints];
    
    NSLayoutConstraint *c1 = [NSLayoutConstraint constraintWithItem:lblName
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:lblName.superview
                                                          attribute:NSLayoutAttributeCenterX multiplier:1
                                                           constant:0];
    [view addConstraint:c1];
}

-(void)AddSpeedLabelToView:(UIView*)view fromModel:(AnimalModel*)model
{
    UILabel *lblSpeed;
    
    lblSpeed = [[UILabel alloc] init];
    lblSpeed.text = [NSString stringWithFormat:@"Speed: %d", model.Speed];
    lblSpeed.translatesAutoresizingMaskIntoConstraints = NO;
    lblSpeed.tag = kSpeedTag;
    
    [view addSubview:lblSpeed];
    
    NSArray * constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-90-[lblSpeed]"
                                                                    options:0 metrics:nil
                                                                      views:NSDictionaryOfVariableBindings(lblSpeed)];
    
    [view addConstraints:constraints];
    
    NSLayoutConstraint *c1 = [NSLayoutConstraint constraintWithItem:lblSpeed
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:lblSpeed.superview
                                                          attribute:NSLayoutAttributeCenterX multiplier:1
                                                           constant:0];
    [view addConstraint:c1];
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
