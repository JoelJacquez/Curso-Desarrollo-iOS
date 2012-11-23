//
//  Fraccion.h
//  SepararInterfazeImplementacion
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <Foundation/Foundation.h>
//La Clase Fraccion
@interface Fraccion : NSObject

@property int numerator, denominator;
-(void) print;
-(void) setNumerador: (int) n;
-(void) setDenominador: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end
