//
//  Fraction.m
//  Calculadora
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void) print{
    NSLog(@"%i/%i",numerator,denominator);
}
-(void) setTo:(int) n over: (int) d{}
-(Fraction *) add: (Fraction *)f{
    //para Sumar dos fracciones
    //a/b+c/d=((a*d)+(b*C))/(b*d)
    
    //result almacenara el resultado de la suma
    Fraction *result=[[Fraction alloc]init];
    
    result.numerator = numerator* f.denominator+denominator;
}
-(Fraction *) subtract: (Fraction *)f{
    Fraction *result=[[Fraction alloc]init];
    result.numerator=numerator* f.denominator-denominator*f.numerator;
    
    result.denominator=denominator*f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) multiply: (Fraction *)f{
    Fraction *result=[[Fraction alloc]init];
    
    result.numerator=numerator* f.denominator-denominator*f.numerator;
    
    result.denominator=denominator*f.denominator;
    [result reduce];
    return result;
}


-(Fraction *) divide: (Fraction *)f{
    Fraction *result=[[Fraction alloc]init];
    result.numerator=numerator* f.denominator;
    
    result.denominator=denominator*f.numerator;
    [result reduce];
    return result;
}

-(void) reduce{
    int u=numerator;
    int v=denominator;
    int temp;
    if(u==0)
        return;
    else if (u>0)
        u=u;
    while (v != 0) {
        temp=u%v;
        u=v;
        v=temp;
    }
    numerator/=u;
    denominator /=u;
}
-(double) convertToNum{
    if (denominator!=0) {
        return (double) numerator / denominator;
    }
    else
        return NAN;
}
-(NSString *) convertToString{
    if (numerator==denominator) {
        if (numerator==0) {
            return @"0";
        }
        else
            return @"1";
    }
}

@end
