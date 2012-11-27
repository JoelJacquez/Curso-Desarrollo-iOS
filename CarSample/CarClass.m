//
//  CarClass.m
//  CarSample
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import "CarClass.h"

@implementation CarClass
@synthesize images;

-(id)init {
    if(self =[super init]){
        if (self.images==nil) {
            images=[[NSArray alloc] initWithObjects:@"lavar.jpeg",
                    @"servicio.jpeg",
                    @"conducir.jpeg",
                    @"gasolina.jpeg",nil];
            NSLog(@"Images:%@", self.images);
        }
    }
    return self;
}
- (UIImage *) washCar{
    NSLog(@"WashCar");
    UIImage *theImage = [UIImage imageNamed:[self.images objectAtIndex:0]];
    return theImage;
}
- (UIImage *) serviceCar{
    NSLog(@"ServiceCar");
    UIImage *theImage = [UIImage imageNamed:[self.images objectAtIndex:1]];
    return theImage;
}
- (UIImage *) driveCar{
    NSLog(@"DriveCar");
    UIImage *theImage = [UIImage imageNamed:[self.images objectAtIndex:2]];
    return theImage;
}
- (UIImage *)fuelCar{
    NSLog(@"FuelCar");
    UIImage *theImage = [UIImage imageNamed:[self.images objectAtIndex:0]];
    return theImage;
}

@end
