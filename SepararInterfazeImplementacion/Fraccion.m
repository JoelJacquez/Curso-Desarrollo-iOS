//
//  Fraccion.m
//  SepararInterfazeImplementacion
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import "Fraccion.h"

@implementation Fraccion
@synthesize denominator, numerator;
-(void) print{
    NSLog(@"%i/%i", numerator, denominator);
}
-(void) setNumerador: (int) n{
    numerator=n;
}
-(void) setDenominador: (int) d{
    denominator=d;
}
-(int) numerator{
    return numerator;
}
-(int) denominator{
    return denominator;
}
-(double) convertToNum{
    if (denominator != 0) 
        return (double) numerator/denominator;
    
    else
        return NAN;
}

@end
