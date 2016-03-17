//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    
// Initialize 5 city objects ---------------------------------------------
    City *vancouver = [[City alloc] initWithName:@"Vancouver"
                                      andWeather:@"It is Sunny!"
                                 andWeatherImage:[UIImage imageNamed:@"sunny.png"]];
    
    City *newyork = [[City alloc] initWithName:@"New York"
                                    andWeather:@"It is Raining!"
                               andWeatherImage:[UIImage imageNamed:@"rain.png"]];
    
    City *paris = [[City alloc] initWithName:@"Paris"
                                  andWeather:@"It is Snowing!"
                             andWeatherImage:[UIImage imageNamed:@"snow.png"]];
    
    City *amman = [[City alloc] initWithName:@"Amman"
                                  andWeather:@"It is Cloudy!"
                             andWeatherImage:[UIImage imageNamed:@"cloudy.png"]];
    
    City *taipei = [[City alloc] initWithName:@"Taipei"
                                   andWeather:@"It is Windy!"
                              andWeatherImage:[UIImage imageNamed:@"wind.png"]];

// Create view controllers for 5 tabs -------------------------------------
    CityViewController *vcVancouver = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *vcNewYork = [[CityViewController alloc] initWithCity:newyork];
    CityViewController *vcParis = [[CityViewController alloc] initWithCity:paris];
    CityViewController *vcAmman = [[CityViewController alloc] initWithCity:amman];
    CityViewController *vcTaipei = [[CityViewController alloc] initWithCity:taipei];
    
    
// Create tab bar controller and set it as the root view controller --------
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    
    
// Create navigation controller and set the root view controller to each city
    UINavigationController *navVancouver = [[UINavigationController alloc] initWithRootViewController:vcVancouver];
    navVancouver.tabBarItem.title = @"Vancouver";
    UINavigationController *navNewYork = [[UINavigationController alloc] initWithRootViewController:vcNewYork];
    navNewYork.tabBarItem.title = @"New York";
    UINavigationController *navParis = [[UINavigationController alloc] initWithRootViewController:vcParis];
    navParis.tabBarItem.title = @"Paris";
    UINavigationController *navAmman = [[UINavigationController alloc] initWithRootViewController:vcAmman];
    navAmman.tabBarItem.title = @"Amman";
    UINavigationController *navTaipei = [[UINavigationController alloc] initWithRootViewController:vcTaipei];
    navTaipei.tabBarItem.title = @"Taipei";

// Set view controllers to the tab bar controller --------------------------
    [tabBarController setViewControllers:@[navVancouver, navNewYork, navParis, navAmman, navTaipei]];
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
