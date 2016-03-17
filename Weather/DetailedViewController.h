//
//  DetailedViewController.h
//  Weather
//
//  Created by Sergio Martinez on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailedViewController : UIViewController

- (instancetype)initWithCity:(City*)city;

@end
