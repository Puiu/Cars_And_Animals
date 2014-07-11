//
//  ListManager.h
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Models.h"

@interface ListManager : NSObject


-(NSArray*)GetCars; //returns an array of CarModel
-(NSArray*)GetAnimals; //returns an array of AnimalModel

@end
