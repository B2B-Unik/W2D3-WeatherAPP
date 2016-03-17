//
//  CityViewController.m
//  Weather
//
//  Created by Sergio Martinez on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"
#import "City.h"

@interface CityViewController ()

@property (nonatomic) UILabel *cityLabel;
@property (nonatomic) UILabel *cityWeatherLabel;
@property (nonatomic) UIImage *cityWeatherImage;
@property (nonatomic) UIButton *cityDetails;

- (void)showWeatherDetails;


@end

@implementation CityViewController



- (instancetype)initWithCity:(City*)city
{
    self = [super init];
    if (self) {
        
        _city = city;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UILabel *cityWeatherLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    cityWeatherLabel.translatesAutoresizingMaskIntoConstraints = NO;
    cityWeatherLabel.text = self.city.weather;
    cityWeatherLabel.numberOfLines = 0;
    [self.view addSubview:cityWeatherLabel];
    
    NSLayoutConstraint *cityWeatherLabelTop = [NSLayoutConstraint constraintWithItem:cityWeatherLabel
                                                                    attribute:NSLayoutAttributeTop
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeTop
                                                                   multiplier:1.0
                                                                     constant:150];
    [self.view addConstraint:cityWeatherLabelTop];

    NSLayoutConstraint *cityWeatherLabelLeft = [NSLayoutConstraint constraintWithItem:cityWeatherLabel
                                                                    attribute:NSLayoutAttributeLeft
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeLeft
                                                                   multiplier:1.0
                                                                     constant:20];
    [self.view addConstraint:cityWeatherLabelLeft];

    NSLayoutConstraint *cityWeatherLabelHeight = [NSLayoutConstraint constraintWithItem:cityWeatherLabel
                                                                    attribute:NSLayoutAttributeHeight
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:nil
                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                   multiplier:1.0
                                                                     constant:50];
    [self.view addConstraint:cityWeatherLabelHeight];

    NSLayoutConstraint *cityWeatherLabelWidth = [NSLayoutConstraint constraintWithItem:cityWeatherLabel
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:150];
    [self.view addConstraint:cityWeatherLabelWidth];
 
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    cityLabel.translatesAutoresizingMaskIntoConstraints = NO;
    cityLabel.text = self.city.name;
    cityLabel.numberOfLines = 0;
    [cityLabel setFont: [cityLabel.font fontWithSize: 26]];
    [self.view addSubview:cityLabel];
    
    NSLayoutConstraint *cityLabelTop = [NSLayoutConstraint constraintWithItem:cityLabel
                                                                    attribute:NSLayoutAttributeTop
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeTop
                                                                   multiplier:1.0
                                                                     constant:100];
    [self.view addConstraint:cityLabelTop];
    
    NSLayoutConstraint *cityLabelLeft = [NSLayoutConstraint constraintWithItem:cityLabel
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeLeft
                                                                    multiplier:1.0
                                                                      constant:20];
    [self.view addConstraint:cityLabelLeft];
    
    NSLayoutConstraint *cityLabelHeight = [NSLayoutConstraint constraintWithItem:cityLabel
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:50];
    [self.view addConstraint:cityLabelHeight];
    
    NSLayoutConstraint *cityLabelWidth = [NSLayoutConstraint constraintWithItem:cityLabel
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:150];
    [self.view addConstraint:cityLabelWidth];

    UIImageView *cityWeatherImage = [[UIImageView alloc] initWithImage:self.city.weatherImage];
    cityWeatherImage.translatesAutoresizingMaskIntoConstraints = NO;
    cityWeatherImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:cityWeatherImage];
    
    NSLayoutConstraint *cityWeatherImageTop = [NSLayoutConstraint constraintWithItem:cityWeatherImage
                                                                           attribute:NSLayoutAttributeTop
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeTop
                                                                          multiplier:1.0
                                                                            constant:200];
    [self.view addConstraint:cityWeatherImageTop];
    
    NSLayoutConstraint *cityWeatherImageLeft = [NSLayoutConstraint constraintWithItem:cityWeatherImage
                                                                            attribute:NSLayoutAttributeLeft
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeLeft
                                                                           multiplier:1.0
                                                                             constant:50];
    [self.view addConstraint:cityWeatherImageLeft];
    
    NSLayoutConstraint *cityWeatherImageHeight = [NSLayoutConstraint constraintWithItem:cityWeatherImage
                                                                              attribute:NSLayoutAttributeHeight
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:nil
                                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                                             multiplier:1.0
                                                                               constant:100];
    [self.view addConstraint:cityWeatherImageHeight];
    
    NSLayoutConstraint *cityWeatherImageWidth = [NSLayoutConstraint constraintWithItem:cityWeatherImage
                                                                             attribute:NSLayoutAttributeWidth
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:nil
                                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                                            multiplier:1.0
                                                                              constant:100];
    [self.view addConstraint:cityWeatherImageWidth];

    UIButton *cityDetailsButton = [[UIButton alloc] initWithFrame:CGRectZero];
    cityDetailsButton.translatesAutoresizingMaskIntoConstraints = NO;
    cityDetailsButton.backgroundColor = [UIColor darkGrayColor];
    [cityDetailsButton setTitle:@"See Weather Details" forState:UIControlStateNormal];
    [cityDetailsButton addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cityDetailsButton];
    
    NSLayoutConstraint *cityDetailsButtonLeft = [NSLayoutConstraint constraintWithItem:cityDetailsButton
                                                                             attribute:NSLayoutAttributeLeft
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeLeft
                                                                            multiplier:1.0
                                                                              constant:120];
    [self.view addConstraint:cityDetailsButtonLeft];

    NSLayoutConstraint *cityDetailsButtonBottom = [NSLayoutConstraint constraintWithItem:cityDetailsButton
                                                                             attribute:NSLayoutAttributeBottom
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeBottom
                                                                            multiplier:1.0
                                                                              constant:-100];
    [self.view addConstraint:cityDetailsButtonBottom];

    NSLayoutConstraint *cityDetailsButtonHeight = [NSLayoutConstraint constraintWithItem:cityDetailsButton
                                                                               attribute:NSLayoutAttributeHeight
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:nil
                                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                                              multiplier:1.0
                                                                                constant:30];
    [self.view addConstraint:cityDetailsButtonHeight];

    NSLayoutConstraint *cityDetailsButtonWidth = [NSLayoutConstraint constraintWithItem:cityDetailsButton
                                                                              attribute:NSLayoutAttributeWidth
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:nil
                                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                                             multiplier:1.0
                                                                               constant:200];
    [self.view addConstraint:cityDetailsButtonWidth];

    
}

- (void)showWeatherDetails {
    
    DetailedViewController *detailedView = [[DetailedViewController alloc]initWithCity:self.city];
    [self.navigationController pushViewController:detailedView animated:NO];
    
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
