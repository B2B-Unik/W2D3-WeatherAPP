//
//  City.h
//  Weather
//
//  Created by Sergio Martinez on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *weather;
@property (nonatomic) UIImage *weatherImage;

- (instancetype)initWithName:(NSString*)name andWeather:(NSString*)weather andWeatherImage:(UIImage*)weatherImage;

@end
