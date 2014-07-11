//
//  ListManager.m
//  Cars_And_Animals
//
//  Created by Puiu on 11/07/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

#import "ListManager.h"

@implementation ListManager

//returns an array of CarModel
-(NSArray*)GetCars
{
    CarModel *car1 = [[CarModel alloc] init];
    car1.Brand = @"BMW";
    car1.Model = @"X5";
    car1.Year = 2005;
    
    CarModel *car2 = [[CarModel alloc] init];
    car2.Brand = @"Citroen";
    car2.Model = @"C5";
    car2.Year = 2003;
    
    
    CarModel *car3 = [[CarModel alloc] init];
    car3.Brand = @"Dacia";
    car3.Model = @"Logan";
    car3.Year = 2011;
    
    NSArray *cars = [NSArray arrayWithObjects:car1, car2,car3, nil];
    return cars;
}

//returns an array of AnimalModel
-(NSArray*)GetAnimals
{
    AnimalModel *animal1 = [[AnimalModel alloc] init];
    animal1.FamilyName = @"Felidae";
    animal1.AnimalName = @"Cat";
    animal1.Speed  = 10;
    
    
    AnimalModel *animal2 = [[AnimalModel alloc] init];
    animal2.FamilyName = @"Felidae";
    animal2.AnimalName = @"Jaguar";
    animal2.Speed  = 100;
    
    AnimalModel *animal3 = [[AnimalModel alloc] init];
    animal3.FamilyName = @"Canidae";
    animal3.AnimalName = @"Dog";
    animal3.Speed  = 20;
    
    
    NSArray *animals = [NSArray arrayWithObjects:animal1, animal2, animal3, nil];
    return animals;
}

@end
