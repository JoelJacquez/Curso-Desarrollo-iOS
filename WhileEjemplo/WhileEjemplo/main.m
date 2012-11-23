//
//  main.m
//  WhileEjemplo
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        int n, numeroTriangular;
        numeroTriangular=0;
        NSLog(@"TABLA DE NUMERO TRIANGULARES");
        NSLog(@" n     Suma de 1 a N ");
        NSLog(@"---   ---------------");
        for (n=0; n<=200; n++) {
            numeroTriangular+=n;
            NSLog(@"%i          %i",n, numeroTriangular);
        }
        
    }
    return 0;
}

