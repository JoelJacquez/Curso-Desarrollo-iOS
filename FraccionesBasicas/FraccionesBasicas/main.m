//
//  main.m
//  FraccionesBasicas
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        int numerator=1;
        int denominator=2;
        NSLog(@"La fraccion tiene como resultado: %i/%i",numerator,denominator);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
