//
//  Calculator.h
//  Calculadora
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
@interface Calculator : NSObject
@property (strong, nonatomic) Fraction *operand1, *operand2, *accumulator;
-(Fraction *) performOperation: (char) op;
-(void) clear;
@end
