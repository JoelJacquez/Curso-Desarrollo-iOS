//
//  CarClass.h
//  CarSample
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarClass : NSObject
@property (nonatomic, retain)NSArray *images;
- (UIImage *) washCar;
- (UIImage *) serviceCar;
- (UIImage *) driveCar;
- (UIImage *)fuelCar;

@end
