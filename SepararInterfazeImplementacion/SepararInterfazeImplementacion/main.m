//
//  main.m
//  SepararInterfazeImplementacion
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraccion.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Fraccion *myFraccion=[[Fraccion alloc]init];
        
        //Establecer los datos de la fraccion
        [myFraccion setNumerador:1];
        [myFraccion setDenominador:3];
        
        //Mostrar la fraccion
        NSLog(@"El valor de la fraccion es:");
        [myFraccion print];
        
    }
    return 0;
}

