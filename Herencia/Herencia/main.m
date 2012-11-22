//
//  main.m
//  Herencia
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClaseB.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        ClaseB *b=[[ClaseB alloc]init];
        
        //metodo Heredado
        [b initVar];
        
        //metodo para mostrar el valor de X
        [b printVar];
        
    }
    return 0;
}

