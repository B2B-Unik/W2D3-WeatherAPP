//
//  CityViewController.h
//  Weather
//
//  Created by Sergio Martinez on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic) City *city;

- (instancetype)initWithCity:(City*)aCity;

@end
