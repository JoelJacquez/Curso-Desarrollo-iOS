//
//  main.m
//  Variables
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        //Variables Generales
        
        //Variables
        int integerVar=100;
        float floatingVar=100.50;
        double doubleVar=100.44e+11;
        char charVar='C';
        NSLog(@"integerVar:%i",integerVar);
        NSLog(@"floatVar:%f",floatingVar);
        NSLog(@"doubleVar:%e",doubleVar);
        NSLog(@"charVar:%c",charVar);
        NSLog(@"--------------------------");
        
        //Expresiones
        int inta=20;
        int intb=30;
        int intc=40;
        float floatx;
        
        int result=inta-intb;
        NSLog(@"a-b=%i",result);
        
        result=inta+intb;
        NSLog(@"a+b=%i",result);
        
        result=intb*intc;
        NSLog(@"b*c=%i",result);
        
        result=intc/inta;
        NSLog(@"c/a=%i",result);
        
        result=intc%inta;
        NSLog(@"c%%a=%i",result);
        
        floatx=(float)inta/intb;
        NSLog(@"a/b=%f",result);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
    }
}
