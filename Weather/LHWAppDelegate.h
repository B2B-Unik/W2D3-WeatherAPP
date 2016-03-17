//
//  LHWAppDelegate.h
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "CityViewController.h"

@interface LHWAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) City *city;
@property (strong, nonatomic) CityViewController *cityViewController;

@end
