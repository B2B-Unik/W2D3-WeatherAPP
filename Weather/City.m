//
//  City.m
//  Weather
//
//  Created by Sergio Martinez on 2016-03-16.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString*)name andWeather:(NSString*)weather andWeatherImage:(UIImage*)weatherImage
{
    self = [super init];
    if (self) {

        _name = name;
        
        _weather = weather;
        
        _weatherImage = weatherImage;
    }
    return self;
}

@end
