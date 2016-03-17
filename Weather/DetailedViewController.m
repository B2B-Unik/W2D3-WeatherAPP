//
//  DetailedViewController.m
//  Weather
//
//  Created by Sergio Martinez on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "City.h"
#import "CityViewController.h"

@interface DetailedViewController ()

@property (nonatomic) City *city;

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UILabel *weatherDetailsLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    weatherDetailsLabel.translatesAutoresizingMaskIntoConstraints = NO;
    weatherDetailsLabel.text = self.city.weather;
    [self.view addSubview:weatherDetailsLabel];
    
    NSLayoutConstraint *weatherDetailsCenterX = [NSLayoutConstraint constraintWithItem:weatherDetailsLabel
                                                                             attribute:NSLayoutAttributeCenterX
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeCenterX
                                                                            multiplier:1.0
                                                                              constant:0];
    [self.view addConstraint:weatherDetailsCenterX];

    NSLayoutConstraint *weatherDetailsCenterY = [NSLayoutConstraint constraintWithItem:weatherDetailsLabel
                                                                             attribute:NSLayoutAttributeCenterY
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeCenterY
                                                                            multiplier:1.0
                                                                              constant:0];
    [self.view addConstraint:weatherDetailsCenterY];
    
    NSLayoutConstraint *weatherDetailsHeight = [NSLayoutConstraint constraintWithItem:weatherDetailsLabel
                                                                             attribute:NSLayoutAttributeHeight
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:nil
                                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                                            multiplier:1.0
                                                                              constant:200];
    [self.view addConstraint:weatherDetailsHeight];

    NSLayoutConstraint *weatherDetailsWidth = [NSLayoutConstraint constraintWithItem:weatherDetailsLabel
                                                                            attribute:NSLayoutAttributeWidth
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:nil
                                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                                           multiplier:1.0
                                                                             constant:200];
    [self.view addConstraint:weatherDetailsWidth];

}

- (instancetype)initWithCity:(City*)city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
